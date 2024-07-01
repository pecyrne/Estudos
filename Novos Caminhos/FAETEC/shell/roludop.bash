#!/bin/bash

function media_fun(){
    media=0
    media=$(echo "scale=2; ($nota1+$nota2+$nota3)/3" | bc)
}

function classificacao_fun(){
    classificacao=""
        if [ $(echo "$media < 5" | bc -l) == 1 ]; then
            classificacao="REPROVADO"
        else
            if [ $(echo "$media < 6" | bc -l) == 1 ]; then
                classificacao="RECUPERACAO"
            else
                classificacao="APROVADO"
            fi
        fi
}

Arquivo=$1 

if [ "$Arquivo" == "" ]; then
    echo "Obrigatorio inserir um Arquivo"
fi

if [ `find . -name $Arquivo ` ]; then
    echo "Arquivo encontrado: $Arquivo"
else
    echo "Arquivo Nao encontrado: $Arquivo"
    exit 1 
fi 

qtd=0
qtd=`wc -w $Arquivo| cut -d' ' -fl`
if [ $qtd -le 0 ]
then
    echo "Arquivo vazio."
    exit 1 
fi

while read linha;
do
    nome=`echo $linha | cut -d':' -f 1 `
    n1=`echo $linha | cut -d':' -f 2 | sed "s/FF/FALTOU/g" `
    n2=`echo $linha | cut -d':' -f 3 | sed "s/FF/FALTOU/g" `
    n3=`echo $linha | cut -d':' -f 4 | sed "s/FF/FALTOU/g" `
    
    nota1=`echo $n1 | sed "s/FALTOU/0/g" `
    nota2=`echo $n2 | sed "s/FALTOU/0/g" `
    nota3=`echo $n3 | sed "s/FALTOU/0/g" `
    
    
    echo "Aluno = $nome NOTA1: $n1 NOTA2: $n2 NOTA3: $n3"
    media_fun
    echo "Media: $media"
    classificacao_fun
    echo "Situação: $classificacao"

done < $Arquivo