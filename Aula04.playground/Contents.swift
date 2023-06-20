
func soma(_ numero1: Int, _ numero2: Int){
    var resultado = numero1 + numero2
    print(resultado)
}

//_Para realizar o retorno de uma função é necesario apos os argumentos indicar com uma seta (->) qual será o tipo do dado a ser retornado
func soma2(numero1: Int, numero2: Int) -> Int{
    var resultado = numero1 + numero2
    return resultado
}

func soma3(_ numero1: Int, com numero2: Int){
    var resultado = numero1 + numero2
    print(resultado)
}

soma(5, 8)

var resSoma2 = soma2(numero1: 4, numero2: 6)
print(resSoma2)

soma3(5, com: 3)

//_Acima temos 2 exemplos de como funções se comportam no Swift, o primeiro caso é quase como uma função funciona no PHP, onde voce apenas chamada a função e passa os parametros. Para que isso funcione no Swift, é necessario inserir um _ (underline) antes do parametro da função.
//_O segundo exemplo usa uma outra sintaxe, nesse modo ao chamar a função no código é necessario passar explicitamente quais parametros irão receber quais valores. Lembrando que mesmo estando explicito quais parametros estão sendo passados, ainda é OBRIGATORIO informa-los na mesma ordem definida na função
//_na função soma3, podemos observar que criamos um alias para o parametro, isso pode ser utilizado para deixar os parametros mais legiveis na hora de passa-los para uma funcao, assim como utilizado 5 com 3 teria resultado 8

//_No Swift não é possivel alterar o valor de um parametro recebido, ex:
//
// func somaNumero(_ numero: Int) {
//     numero += 1
//     print(numero)
// }
// somaNumero(10)

//_Isso acontece porque as funções no Swift recebem os parametros como constantes (let), por isso não podem ser modificadas
//_Entretanto há uma maneira de modificar esse comportamento, podemos adicionar a palavra inout antes do tipo do parametro, mas para isso precisamos atribuir o valor a uma variavel (var) e no momento da chamada da função adicionar um & antes do nome da variavel que será enviada via parametro

func somaNumero(_ numero: inout Int){
    numero += 1
    print(numero)
}

var valor = 10
somaNumero(&valor)
print(valor)
