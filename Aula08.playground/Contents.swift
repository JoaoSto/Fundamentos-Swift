//_DICIONARIOS
//_Basicamente objetos no JS ou array chave/valor no PHP

var pontuacao = [
    "joaoMunhoz": 20,
    "giovannaMoeller": 10,
    "loremIpsum": 8
]

var pessoas: [String: Int] = [:] //_Declaracao de um dicionario vazio, lembrando que é preciso tipar explicitamente
pessoas.reserveCapacity(10) //_Caso queira, é possivel reservar na memoria o espaço total que será ocupado pelo dicionario informando quantos items terá

print(pontuacao["joaoMunhoz"]) //_Ao acessar um indice de dicionario será retornado uma opcional

if let pontuacao = pontuacao["joaoMunhoz"] {
    print("Pontuação: \(pontuacao)")
} else {
    print("A pontuação não existe")
}

pontuacao.isEmpty
pontuacao.count
pontuacao["anaJulia"] = 30
print(pontuacao)

pontuacao["joaoMunhoz"] = 69
pontuacao.updateValue(50, forKey: "giovannaMoeller")
pontuacao.updateValue(40, forKey: "maiconDouglas") //_Caso a chave não exista, cria uma com os valores informados
print(pontuacao)

pontuacao["joaoMunhoz"] = nil //_Remove um item do dicionario
pontuacao.removeValue(forKey: "maiconDouglas") //_Os metodos remove retornam os valores removidos
print(pontuacao)

//_Praticamente um foreach
for (nome, pontuacao) in pontuacao {
    print("O usuário \(nome) fez \(pontuacao) pontos!")
}


for nome in pontuacao.keys{
    print(nome)
}

for pontos in pontuacao.values{
    print(pontos)
}

//_DESAFIO 1
func calculaMedia(_ notas: [Double]) -> Double {
    var somaNotas = 0.0
    let quantidadeElementos = notas.count
    for nota in notas {
        somaNotas += nota
    }
    return somaNotas / Double(quantidadeElementos)
}

let notas = [8.9, 10, 9.5, 6.7, 8.5]
let mediaNotas = calculaMedia(notas)

//_DESAFIO 2
func exibeEstado(_ estados: [String: String]) {
    for estado in estados.values {
        if estado.count > 8 {
            print(estado)
        }
    }
}

let estados = [
    "SP": "São Paulo",
    "CE": "Ceará",
    "RJ": "Rio de Janeiro"
]
exibeEstado(estados)
