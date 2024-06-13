#⦁	Crie um programa para receber uma determinada temperatura em graus Celsius (Cº) e fazer a sua conversão para graus Fahrenheit (Fº). Fórmula:   F = (9C + 160) / 5

Temp_Celsius = float(input("Informe a temperatura em graus Celsius (Cº): "))
Temp_Fahrenheit = (9*Temp_Celsius+160)/5
print("A temperatura", Temp_Celsius, "º em Fahrenheit é:", Temp_Fahrenheit,"º")