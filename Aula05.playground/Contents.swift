//_Valores opcionais

//_Uma variavel quando definida como opcional, fica "embrulhada" em um optional
var telefone: String? //_Declaramos uma variavel como opcional ao adicionar uma ? apos o seu tipo
telefone = "(12)3600-0000"
//print(telefone!) //_Para utilizar uma variavel opcional, é necessario "desembrulha-la, uma maneira não muito recomandada de se fazer isso é adicionando um sinal de exclamação (!) quando quiser utilizar a variavel, este modo não é muito recomendado a menos que voce tenha certeza de que existe um valor a ser "desembrulhado" nessa variavel, caso não tenha valores, resultará em um erro de execução.

//_Uma maneira mais segura de desembrulhar uma variavel são as seguintes

//_Aqui verificamos se a variavel é diferente de nil, estado nulo no Swift, caso tenha valor, faz o desembrulho
if telefone != nil {
    print(telefone!)
}

//_Neste outro modo, criamos uma variavel de escopo local, ou seja, só sera possivel utiliza-la dentro deste if let, que realizará a validação do variavel e caso possua valor, desembrulhara seu conteudo
if let telefoneDesembrulhado = telefone {
    print(telefoneDesembrulhado)
}

//_Ainda sobre o if let, comunmente é declarado com o mesmo nome da variavel que voce esta querendo desembrulhar, ou seja:
if let telefone = telefone {
    print(telefone)
}

//_Tambem é possivel adicionar multiplas validações, como por exemplo:

var celular: String?
celular = "(12)99999-9999"

//_Nesse caso só serão desembrulhados as variaveis opcionais se ambas forem diferentes de nil
if let telefone = telefone, let celular = celular {
    print(telefone)
    print(celular)
}

//_Diferente do if let que possui escopo apenas em sua linha, o guard let possui escopo um escopo maior, sendo que quando utilizado numa função podemos utilizar seus valores em qualquer outro ponto da função. Alem do escopo, quando utilizado guard let, se não for possivel desembrulhar algum parametro ele permite que voce retorne (saia) da funcao

func autenticar(_ usuario: String?, _ senha: String?){
    guard let usuario = usuario, let senha = senha else { return }
    print(usuario)
    print(senha)
}

autenticar("joaomunhoz", nil) //_Não será executado
autenticar("joaomunhoz", "123456") //_Será executado

//_if let é chamado de Optional Binding

//_Chaining Binding
if let primeiroCaractere = telefone?.first {
    print(primeiroCaractere)
}

//_Nil coalescing operator
print(telefone ?? "Não há valor para telefone") //_Caso telefone seja nil, retorna a mensagem

//_Desafio 1
func primo(_ numero: Int) -> Bool{
    let start = 2
    for i in start..<numero {
        if numero % i == 0{
            return false
        }
    }
    return true
}

primo(6)
primo(7)

//_Desafio 2
func mostraNome(_ nome: String?){
    guard let nome = nome else {
        print("Nome não informado")
        return
    }
    print(nome)
}

mostraNome("Giovanna")
mostraNome(nil)

//_Desafio 3
func divideConta(_ total: Double, _ numeroPessoas: Int) -> Double{
    let valorComTaxa = total * 1.1
    return valorComTaxa / Double(numeroPessoas)
}

let totalParaCadaPessoa = divideConta(120, 4)
print(totalParaCadaPessoa)
