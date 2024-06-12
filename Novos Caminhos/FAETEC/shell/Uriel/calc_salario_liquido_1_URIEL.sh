#!/bin/bash


#Com base nos arquivos

#SALARIO.txt
#IMPOSTO1_2023.txt
#IMPOSTO2 2023.txt

#Criar uma função que calcule o valor do imposto 1 que corresponde ao imposto de renda ficticio ser recolhido.

#Para o salario verificar qual a faixa de imposto IRPF
#vl_imposto1-SALARIO PERCENTUAL IMPOSTO DE RENDA FICTICIO/100

#Criar uma função que calcule o valor de imposto 2 que corresponde ao imposto do INSS ficticio ser recolhido.

#Para o salario, verificar qual a faixa de imposto INSS
#vl_imposto2-SALARIO PERCENTUAL IMPOSTO INSS FICTICIO/100

#Criar uma funcao que calcule o valor liquido
#(SALARIO - vl_imposto1 - vl_imposto2)

#Atencao

#0 vl_imposto1 pode estar como isento, logo não devera participar do calculo do salario liquido ou seja,
#(SALARIO vl_imposto2)

#Resultado

#CARREIRA CONTADOR
#SALARIO = 5000.00

#IRPE = 1375.00

#INSS = 700.00

#LIQUIDO 4325.00.



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
    
        fx1=`echo $linss | cut -d'|' -f 2 `
        fx2=`echo $linss | cut -d'|' -f 3 `
        pctINSS=`echo $linss | cut -d'|' -f 4 `
      
        if [ $(echo "$salario <= fx2" | bc -l) == 1 -a "$pctINSS" == "ISENTO" ]
        then
            vl_imposto2="ISENTO"
            break
        fi 

        if [ $(echo " $salario > $fx1 && salario <= $fx2 " | bc -l) == 1 ]
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
    if [ $imposto1 == "ISENTO" ]
    then
        imposto1=0
    fi
    if [ $imposto2 == "ISENTO" ]
    then
        imposto2=0 
    fi

    vl_liquido=$(echo "scale=2; $salario - $imposto1 - $imposto2" | bc)
}

# fase 1 verificar se o arquivo esta no diretorio
#O nome do arquivo sera passado por parametro

arqSALARIO=$1 
arqIMPOSTO1=$2 
arqIMPOSTO2=$3

# Definir validacao do parametro para o arquivo 1

if [ "$arqSALARIO" == "" ]
then
    echo "Arquivo arqSALARIO obrigatorio !!"
    exit
fi


#Definir a validacao acima para o arqIMPOSTO1

if [ "$arqIMPOSTO1" == "" ]
then
    echo "Arquivo arqIMPOSTO1 obrigatorio !!"
    exit
fi


#Definir a validação acima para o arqIMPOSTO2

if [ "$arqIMPOSTO2" == "" ]
then
    echo "Arquivo arqIMPOSTO2 obrigatorio !!"
    exit
fi


#Verifica se o arquivo existe na pasta raiz

if [ `find . -name $arqSALARIO ` ]
then
    echo "Achou o arquivo = $arqSALARIO"
else
    echo "Nao encontrou o arquivo = $arqSALARIO"
fi 


#Definir a verificação para o arqIMPOSTO1

if [ `find . -name $arqIMPOSTO1 ` ]
then
    echo "Achou o arquivo = $arqIMPOSTO1"
else
    echo "Nao encontrou o arquivo = $arqIMPOSTO1"
fi 


#Definir a verificação para o arqIMPOSTO2

if [ `find . -name $arqIMPOSTO2 ` ]
then
    echo "Achou o arquivo = $arqIMPOSTO2"
else
    echo "Nao encontrou o arquivo = $arqIMPOSTO2"
fi


#Verifica se o arquivo esta vazio

qtd=0 
qtd=`wc -w $arqSALARIO| cut -d' ' -f1`
if [ $qtd -le 0 ]
then
    echo "Arquivo $arqSALARIO esta vazio!!"
    exit
fi 


#Definir a verificação acima para o arqIMPOSTO1

qtd=0 
qtd=`wc -w $arqIMPOSTO1| cut -d' ' -f1`
if [ $qtd -le 0 ]
then
    echo "Arquivo $arqIMPOSTO1 esta vazio!!"
    exit
fi 


#Definir a verificação acima para o arqIMPOSTO2

qtd=0 
qtd=`wc -w $arqIMPOSTO2| cut -d' ' -f1`
if [ $qtd -le 0 ]
then
    echo "Arquivo $arqIMPOSTO2 esta vazio!!"
    exit
fi 




while read linha;
do
    carreira=`echo $linha | cut -d'|' -f 1 `
    salario=`echo $linha | cut -d'|' -f 2 `
    
    
    
    fimposto1
    fimposto2
    fliquido
    printf "######################################## ###\n"
    printf "CARREIRA    = %s\n" "$carreira"
    printf "SALARIO     = R$ %s\n" $salario
    printf "IRPFICTICIO = R$ %s\n" $vl_imposto1
    printf "INSSFICTICIO= R$ %s\n" $vl_imposto2
    printf "LIQUIDO     = R$ %s\n" $vl_liquido
    
    done < $arqSALARIO
    
        printf "######################### ####################\n"
    