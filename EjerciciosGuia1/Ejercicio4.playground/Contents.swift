import UIKit

/**
 : Operaciones matriciales básicas (suma y multiplicación)
 ● Instrucción: Escribe dos funciones, sumaMatrices y multiplicarMatrices,
 que acepten dos matrices (arrays de arrays de enteros) y devuelvan la matriz
 resultado de la suma y la multiplicación, respectivamente. Valida que las
 dimensiones de las matrices sean compatibles para cada operación. Prueba las
 funciones con matrices de ejemplo.

 */

//Suma de las matrices
func sumaMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
    if (matrizA.count != matrizB.count || matrizA[0].count != matrizB[0].count){
        print("Las matrices no pueden ser multiplicadas")
        return nil
    }
    var matrizResultado = matrizA
    for i in 0..<matrizA.count {
        for j in 0..<matrizA[i].count {
            matrizResultado[i][j] = matrizA[i][j] + matrizB[i][j]
        }
    }
    return matrizResultado
}

let matrizA = [[1, 2], [3, 4]]
let matrizB = [[5, 6], [7, 8]]

//Resultado de la suma
if let suma = sumaMatrices(matrizA: matrizA, matrizB: matrizB) {
    print("Suma de matrices: \(suma)")
}

//Función de la multiplicación de la matriz
func multiplicarMatrices(matrizC: [[Int]], matrizD: [[Int]]) -> [[Int]]? {
    guard matrizC[0].count == matrizD.count else {
        print("Las matrices no pueden ser multiplicadas")
        return nil
    }
    
    var matrizResultado = Array(repeating: Array(repeating: 0, count: matrizB[0].count), count: matrizA.count)
    for i in 0..<matrizC.count {
        for j in 0..<matrizD[0].count {
            for k in 0..<matrizC[0].count {
                matrizResultado[i][j] += matrizC[i][k] * matrizD[k][j]
            }
        }
    }
    
    return matrizResultado
}

let matrizC = [[1, 2], [3, 4]]
let matrizD = [[5, 6], [7, 8]]

//Resultado de la multiplicación
if let producto = multiplicarMatrices(matrizC: matrizC, matrizD: matrizD) {
    print("Producto de matrices: \(producto)")
}

