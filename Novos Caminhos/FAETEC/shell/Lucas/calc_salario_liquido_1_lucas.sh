#!/bin/bash


function fimposto1(){
    
    vl_imposto1=0 
    
    while read lirpf;
    
    do
            
        fx1=`echo $lirpf | cut -d'|' -f 2 `
        
        fx2=`echo $lirpf | cut -d'|' -f 3 `
        
        pctIRPF=`echo $lirpf | cut -d'|' -f 4 `

        if [ $(echo "$salario <= $fx2" | bc -l)  == 1 -a "$pctIRPF" == "ISENTO" ]
        
        then
        
            vl_imposto1="ISENTO"
            
            break
            
        fi 
            
        if [ $(echo " $salario > $fx1 && $salario <= $fx2 " | bc -l) == 1 ]
        
        then
        
            vl_imposto1=$(echo "scale=2; $salario*$pctIRPF/100" | bc -l)
            
            break
            
        fi
    
    done < $arqIMPOSTO1

}

function fimposto2(){
    
    vl_imposto2=0 
    
    while read linss;
    
    do
    
        fax1=`echo $linss | cut -d'|' -f 2 `
        
        fax2=`echo $linss | cut -d'|' -f 3 `
        
        pctINSS=`echo $linss | cut -d'|' -f 4 `
      
        if [ $(echo "$salario <= fax2" | bc -l) == 1 -a "$pctINSS" == "ISENTO" ]
        
        then
        
            vl_imposto2="ISENTO"
            
            break
            
        fi 

        if [ $(echo " $salario > $fax1 && salario <= $fax2 " | bc -l) == 1 ]
        
        then
        
            vl_imposto2=$(echo "scale=2; $salario*$pctINSS/100" | bc)
            
            break
            
        fi

    done < $arqIMPOSTO2
    
}

function fliquido(){
    
    vl_liquido=0
    
    imposto1=$vl_imposto1
    
    imposto2=$vl_imposto2

    if [ $vl_imposto1 == "ISENTO" ]
    
    then
    
        imposto1=0
        
    fi
    
    if [ $vl_imposto2 == "ISENTO" ]
    
    then
    
        imposto2=0 
        
    fi

    vl_liquido=$(echo "scale=2; $salario - $imposto1 - $imposto2" | bc)

}

arqSALARIO=$1 

arqIMPOSTO1=$2 

arqIMPOSTO2=$3

if [ "$arqSALARIO" == "" ]

then

    echo "Arquivo $arqSALARIO obrigatorio !!"
    
    exit
    
fi

if [ "$arqIMPOSTO1" == "" ]

then

    echo "Arquivo $arqIMPOSTO1 obrigatorio !!"
    
    exit
    
fi

if [ "$arqIMPOSTO2" == "" ]

then

    echo "Arquivo $arqIMPOSTO2 obrigatorio !!"
    
    exit
    
fi

if [ `find . -name $arqSALARIO ` ]

then

    echo "Achou o arquivo = $arqSALARIO"
    
else

    echo "Nao encontrou o arquivo = $arqSALARIO"
    
fi 

if [ `find . -name $arqIMPOSTO1 ` ]

then

    echo "Achou o arquivo = $arqIMPOSTO1"
    
else

    echo "Nao encontrou o arquivo = $arqIMPOSTO1"
    
fi 

if [ `find . -name $arqIMPOSTO2 ` ]

then

    echo "Achou o arquivo = $arqIMPOSTO2"
    
else

    echo "Nao encontrou o arquivo = $arqIMPOSTO2"
    
fi

qtd=0 

qtd=`wc -w $arqSALARIO| cut -d' ' -f1`

if [ $qtd -le 0 ]

then

    echo "Arquivo SALARIO esta vazio!!"
    
    exit
    
fi 

qtd=0 

qtd=`wc -w $arqIMPOSTO1| cut -d' ' -f1`

if [ $qtd -le 0 ]

then

    echo "Arquivo IMPOSTO1 esta vazio!!"
    
    exit
    
fi 

qtd=0 

qtd=`wc -w $arqIMPOSTO2| cut -d' ' -f1`

if [ $qtd -le 0 ]

then

    echo "Arquivo IMPOSTO2 esta vazio!!"
    
    exit
    
fi 


while read linha;

do

    carreira=`echo $linha | cut -d'|' -f 1 `
    
    salario=`echo $linha | cut -d'|' -f 2 `
    
    fimposto1
    
    fimposto2
    
    fliquido
    
    printf "##################################################################\n"
    
    printf "CARREIRA      = %s\n" "$carreira"
    
    printf "SALARIO      = R$ %s\n" $salario
    
    printf "IRPFICTICIO   = R$ %s\n" $vl_imposto1
    
    printf "INSSFICTICIO  = R$ %s\n" $vl_imposto2
    
    printf "LIQUIDO     = R$ %s\n" $vl_liquido
    
    
    done < $arqSALARIO
    
        printf "##################################################################\n"
    