//_COLEÇÃO DE DADOS
//_Arrays

//_Para tipar um array, basta declarar seu tipo entre []
var notas: [Double] = [8.5, 9.0, 7.2, 6.0] //_Declaração de um array com dados do tipo Double
notas[0]

var arrayVazio = Array<String>() //_Declaração de um array vazio
var arrayVazio2: [String] = [] //_Declaracao de um array vazio

notas.isEmpty
arrayVazio.isEmpty

notas.count
notas.min()
notas.max()
notas.contains(8.5)
notas.firstIndex(of: 7.2)

notas.append(10)
notas.insert(5.0, at: 2)
notas += [6.9]
print(notas)

var elementoRemovido = notas.removeLast()
var elementoRemovido2 = notas.removeFirst()
var elementoRemovido3 = notas.remove(at: 0)
print(elementoRemovido)
print(elementoRemovido2)
print(elementoRemovido3)
print(notas)

for nota in notas{
    print(nota)
}

for i in 0..<notas.count{
    print(notas[i])
}

for (index, elemento) in notas.enumerated(){
    print(index, elemento)
}
