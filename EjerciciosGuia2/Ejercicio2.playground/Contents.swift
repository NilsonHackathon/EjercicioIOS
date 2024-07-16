import UIKit

/*
 Ejercicio 2: Funciones Estáticas y Clases
 Crear una clase Calculadora con funciones estáticas sumar y restar. Implementar
 una función que acepte un array de enteros y use las funciones estáticas para calcular la
 suma y la resta total de los elementos del array.
 */

// Clase Calculadora
class Calculadora {
    static func sumar(a: Int, b: Int) -> Int {
        return a + b
    }
    
    static func restar(a: Int, b: Int) -> Int {
        return a - b
    }
    
    static func calcularSumaYRestaTotales(numeros: [Int]) -> (sumaTotal: Int, restaTotal: Int) {
        var sumaTotal = 0
        var restaTotal = 0
        
        for numero in numeros {
            sumaTotal = Calculadora.sumar(a: sumaTotal, b: numero)
            restaTotal = Calculadora.restar(a: restaTotal, b: numero)
        }
        
        return (sumaTotal, restaTotal)
    }
}

// Ejemplo de uso
let numeros = [1, 2, 3, 4, 5]
let resultado = Calculadora.calcularSumaYRestaTotales(numeros: numeros)
print("Suma total: \(resultado.sumaTotal)")
print("Resta total: \(resultado.restaTotal)")

