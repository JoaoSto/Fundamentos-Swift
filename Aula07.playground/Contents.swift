//Set

var nomes: Set<String> = ["João", "Giovanna", "Ana"]

nomes.contains("Giovanna")

nomes.insert("Carla")
nomes.remove("João")

//Tuplas

//_Assim como os parametros de funções, é possivel atribuir um alias para os tipos de dados utilizados dentro de uma tupla, para isso é necessario deixar explicito o tipo de dado que será utilizado. Normalmente nesse tipo de variavel, é utilizado declaração implicita

typealias Coordenadas = (x: Int, y: Double, z: Double)

var coordenadas: Coordenadas = (x: 5, y: 3.5, z: 8.0)
coordenadas.x
coordenadas.y
coordenadas.z

var pessoa = (nome: "João", idade: 22)
pessoa.nome
pessoa.idade

var (nome, _) = pessoa //_Desestruturando a variavel pessoa
print(nome)

