# ⦁	Uma agência de câmbio precisa de um sistema para fazer a conversão de valores em reais para dólar e euro.   Elabore um algoritmo e o programa para fazer tais conversões.

Valor_Euro = float(input("Informe o valor do EURO (EUR) em relação ao REAL (BRL): "))
Valor_Dolar = float(input("Informe o valor do DOLAR (USD) em relação ao REAL (BRL): "))
Real = round(float(input("Informe a quantia de REAL (BRL) para a conversão: ")), 2)
print("R$", Real," na conversao para EURO (EUR) é", Real/Valor_Euro, "na conversao para DOLAR (USD)", Real/Valor_Dolar)