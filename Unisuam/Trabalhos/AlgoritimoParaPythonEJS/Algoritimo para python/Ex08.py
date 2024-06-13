#⦁	Um carro movido à gasolina, possui consumo médio de 15 Km/l, desenvolva um algoritmo e o programa que calcule o valor em reais do percurso de uma viagem realizada com este automóvel.

Valor_Gasolina = round(float(input("Informe o valor do LITRO da GASOLINA(R$ 00.00): ")), 2)
Distancia_Percorrida = float(input("Informe a distancia percorrida durante a viagem(KM): "))
print("O valor da viagem foi:", round(Valor_Gasolina*(Distancia_Percorrida/15), 2), "R$")