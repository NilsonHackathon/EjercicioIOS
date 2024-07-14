import UIKit

/*
 Ejercicio 2: Implementar la búsqueda binaria recursiva en un array ordenado
 ● Instrucción: Escribe una función llamada busquedaBinariaRecursiva que
 implemente el algoritmo de búsqueda binaria de manera recursiva. La función
 debe aceptar un array ordenado de enteros, el valor a buscar, y los índices de
 inicio y fin. Devuelve la posición del valor encontrado o nil si no se encuentra.
 Prueba la función con un array de ejemplo.
 */

func busquedaBinariaRecursiva(array: [Int], valor: Int, inicio: Int, end: Int) -> Int?{
    if inicio > end {
        return nil
    }
    
    var medio = (inicio + end) / 2
    if array[medio] == valor{
        return medio
    }
    else if array[medio] < valor {
        return busquedaBinariaRecursiva(array: array, valor: valor, inicio: medio + 1, end: end)
    }
    else{
        return busquedaBinariaRecursiva(array: array, valor: valor, inicio: inicio, end: medio - 1)
    }
}

var numerosOrdenados = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var posicion = busquedaBinariaRecursiva(array: numerosOrdenados, valor: 5, inicio: 0, end: numerosOrdenados.count - 1)

if posicion != nil {
    print("El valor se encuentra en la posición \(posicion)")
}
else{
    print("El valor no se encuentra en el array")
}
