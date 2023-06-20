
//_Intervalos no Swift
//_No Swift temos 2 tipos de intervalos, os intervalos fechados e semi-abertos, intervalos fechados são definidos da seguinte maneira 1...10, no qual contem os valores de 1 a 10, enquanto intervalos semi-abertos são definidos por 1..<10, ou seja este ultimo intervalo contem apenas os valores de 1 a 9

//_Exemplo intervalo fechado
for i in 1...10 {
    print(i)
}

//_Exemplo intervalo semi-aberto
for i in 1..<10 {
    print(i)
}

//_Quando não utilizamos as variaveis contidas nos laços de repetição ou cases, podemos substitui-las por um underline _
for _ in 1...10 {
    print("Teste")
}

//_While's
//_A diferença entre while e repeat while é que, no while convencional, primeiro verifica-se a condição e depois é executado o codigo, já no repeat while, o código é executado primeiro, e depois é feita a verificação de sua condição

var count = 1

while count <= 10 {
    print("Teste While")
    count += 1
}

repeat {
    print("Teste Repeat While")
} while count <= 10



var soma = 1
count = 0
repeat {
    soma += 3
    count += 1
} while(count < 5)

print(soma)

for i in 1...10{
    if i % 2 == 0 {
        print(i)
    }
}
