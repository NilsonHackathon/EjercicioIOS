import UIKit

/*
 Actividad 3: Estructuras de Control
 Ejercicio 1: Implementar un algoritmo de ordenamiento por selección
 ● Instrucción: Escribe una función llamada ordenarPorSeleccion que acepte un
 array de enteros y lo ordene utilizando el algoritmo de ordenamiento por selección.
 Implementa la lógica del algoritmo y prueba la función con un array de ejemplo.

 */
//Funcion de ordenamiento por medio de los arreglos.
func ordenarPorSeleccion(array: inout [Int]) {
    //ciclo for que ayuda a ir ordenando los numeros en orden de meor a mayor.
    for i in 0..<array.count {
        var minIndex = i
        for j in i+1..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        //Evita ahcer un intercambio innecesario cuadno un numero pequeño ya esta bien posicionado.
        if i != minIndex {
            array.swapAt(i, minIndex)
        }
    }
}
//Datos y resultados.
var numeros = [64, 25, 12, 22, 11, 90]
ordenarPorSeleccion(array: &numeros)
print("Array ordenado por selección: \(numeros)")
