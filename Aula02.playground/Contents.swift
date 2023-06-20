10 + 2
10 - 2
8 * 2
10 / 2
5 / 2 //_No swift, ao divir um numero inteiro por outro numero inteiro, seu resultado será um numero inteiro arredondado (até onde percebi para baixo)
5.0 / 2 //_Para obter o resultado em decimal, podemos declarar o primeiro numero com um ponto, desse jeito o swift converterá o outro numero para decimal tambem
Double(5) / 2 //_Partindo do mesmo principio, podemos indicar que o primeiro numero é um Double, com isso o resultado tambem será em Double
5 % 2 //_Modulo da divisão (Resto), nesse caso sobra 1
4 % 2 //_Modulo da divisão, nessa caso sobra 0

var numero1 = 10
var numero2 = 50
var soma = numero1 + numero2

print(soma)

numero1 = numero1 + 2
numero1 -= 2 //_Operador de atribuição composto - adiciona (ou realiza qualquer outra operacao) 2 no valor atual da variavel numero1

var nome = "João"
var sobrenome = "Munhoz"

print("Meu nome é: \(nome) \(sobrenome)")

//_Desafio 1

var tempCelsius: Int = 21
var tempFahrenheit: Int

tempFahrenheit = (tempCelsius * 9/5) + 32

print("\(tempCelsius) graus celsius são \(tempFahrenheit) graus em Fahrenheit")

//_Desafio 2

var notaA: Double = 8.5
var notaB: Double = 10
var media: Double

media = (notaA + notaB) / 2

print("A média das notas \(notaA) e \(notaB) é igual a \(media)")

var idade = 20
idade >= 18 ? print("Maior de idade") : print("Não é maior de idade")
