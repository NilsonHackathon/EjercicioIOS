import UIKit

/*
 Ejercicio 2: Implementar el algoritmo de búsqueda en profundidad (DFS) en un grafo
 ● Instrucción: Crea una clase Grafo que represente un grafo utilizando una lista de
 adyacencia. Escribe un método dfs que realice una búsqueda en profundidad
 (DFS) desde un nodo inicial y devuelva el recorrido. Implementa y prueba la
 función con un grafo de ejemplo.
 */

class Grafo {
    var adjList: [Int: [Int]]

    init() {
        adjList = [Int: [Int]]()
    }

    func agregarArista(from: Int, to: Int) {
        if adjList[from] == nil {
            adjList[from] = []
        }
        adjList[from]?.append(to)
    }

    func dfs(inicio: Int) -> [Int] {
        var resultado = [Int]()
        var visitados = [Int: Bool]()
        
        dfsUtil(nodo: inicio, visitados: &visitados, resultado: &resultado)
        
        return resultado
    }

    private func dfsUtil(nodo: Int, visitados: inout [Int: Bool], resultado: inout [Int]) {
        visitados[nodo] = true
        resultado.append(nodo)
        
        if let vecinos = adjList[nodo] {
            for vecino in vecinos {
                if visitados[vecino] == nil {
                    dfsUtil(nodo: vecino, visitados: &visitados, resultado: &resultado)
                }
            }
        }
    }
}

let grafo = Grafo()
grafo.agregarArista(from: 0, to: 1)
grafo.agregarArista(from: 0, to: 2)
grafo.agregarArista(from: 1, to: 2)
grafo.agregarArista(from: 2, to: 0)
grafo.agregarArista(from: 2, to: 3)
grafo.agregarArista(from: 3, to: 3)

let recorrido = grafo.dfs(inicio: 2)
print("Recorrido DFS: \(recorrido)")
