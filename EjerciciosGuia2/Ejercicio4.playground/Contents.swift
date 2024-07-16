import UIKit

/*
 Ejercicio 4: Enums y Funciones Estáticas
 Implementar una enumeración OperacionMatematica con casos suma, resta,
 multiplicacion, y division. Crear una clase OperadorMatematico con una
 función estática realizarOperacion que acepte dos números y un caso de
 OperacionMatematica, y devuelva el resultado de la operación.

 */

enum OperacionMatematica{
    case suma
    case resta
    case multi
    case div
}

class OperadorMatematico{
    static func realizarOperacion (a: Double, b: Double, operacion: OperacionMatematica) -> Double{
        switch operacion {
        case .suma:
            return a + b;
        case .resta:
            return a - b;
        case .multi:
            return a * b;
        case .div:
            if b != 0{
                return  a / b;
            }
            else{
                print("Err0r: División entre cero")
                return 0
            }
        }
            
    }
}

//Ejemplo de uso
var resultadoSuma = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .suma)
print("Resultado de la suma: \(resultadoSuma)")

var resultadoResta = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .resta)
print("Resultado de la resta: \(resultadoResta)")

var resultadoMulti = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .multi)
print("Resultado de la Multiplicación: \(resultadoMulti)")

var resultadoDiv = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .div)
print("Resultado de la divición: \(resultadoDiv)")
