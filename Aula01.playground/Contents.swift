//var nome: String = "João"
//var idade: Int = 23
//let idade: Int = 23 //_Diferente do JS, no swift let é a declaração de uma constante, enquanto para todo o resto deve ser usado var

//idade = Int(23.5) //_Nesse caso o valor será arredondado, praticamente irá ignorar o ponto e utilizara apenas os digitos inteiros (A primeira letra do tipo precisa ser maiscula

//print("Meu nome é \(nome), e tenho \(idade) anos.")

//var coeficienteRendimento: Double = 9.5

//_O exemplo abaixo está incorreto, pois assim como no TS, swift é fortemente tipado, nesse caso como não foi explicito o tipo de dado que a variavel receberia. Para atribuir valores igual se faz no PHP sem informar o tipo, deve-se realizar essa atribuição durante a declaração da variavel, ex: var possuiHistoricoReprovacao = false, nesse caso ao inspecionar a variavel com o botao option pressionado será possível notar que a variavel foi tipada implicitamente

//var possuiHistoricoReprovacao
//possuiHistoricoReprovacao = false

//_Uma outra alternativa é declarar a varialel ja tipada, com isso é possivel atribuir valores sem gerar erros de sintaxe, ex:

var possuitHistoricoReprovacao: Bool //_Sempre lembrar que os tipos de dados começam com a primeira letra maiuscula!
possuitHistoricoReprovacao = false

var turnoEmQueEstuda: Character = "D" //_O tipo Character indica que é apenas um caractere de texto, a diferença para uma String é que uma String é um conjunto de caracteres

typealias Estudante = String //_Um typealias é usado para definir um apelido para um determinado tipo de dado que será utilizado em vários lugares, nesse exemplo foi definido o tipo Estudante será uma String, com isso na declaração da variavel alunoN chamamos o apelido Estudante com seu tipo ja declarado

var aluno1: Estudante = "João"
var aluno2: Estudante = "Ana"

var inicial: Character = "G"
var nome: String = "Giovanna"
var apelido: String = "Gio"
var idade: Int = 22
var altura: Double = 1.57
var gostaDeSwift: Bool = true

print("Inicial do nome: \(inicial)")
print("Nome: \(nome)")
print("Apelido: \(apelido)")
print("Idade: \(idade)")
print("Altura \(altura)")
print("Gosta de swift: \(gostaDeSwift)")
