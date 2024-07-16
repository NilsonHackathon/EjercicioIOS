import UIKit

/*
 Ejercicio 3: Polimorfismo y Structs
 Descripción: Crear un protocolo Figura con un método calcularArea. Implementar
 estructuras Cuadrado y Rectangulo que conformen al protocolo Figura. Crear una
 función que acepte un array de Figura y calcule el área total de todas las figuras.

 */

// Protocolo Figura
protocol Figura {
    func calcularArea() -> Double
}

// Estructura Cuadrado que implementa el protocolo Figura
struct Cuadrado: Figura {
    var lado: Double
    
    func calcularArea() -> Double {
        return lado * lado
    }
}

// Estructura Rectangulo que implementa el protocolo Figura
struct Rectangulo: Figura {
    var ancho: Double
    var alto: Double
    
    func calcularArea() -> Double {
        return ancho * alto
    }
}

// Función para calcular el área total de un array de figuras
func calcularAreaTotal(figuras: [Figura]) -> Double {
    var areaTotal = 0.0
    
    for figura in figuras {
        areaTotal += figura.calcularArea()
    }
    
    return areaTotal
}

// Ejemplo de uso
let cuadrado = Cuadrado(lado: 4.0)
let rectangulo = Rectangulo(ancho: 3.0, alto: 5.0)
let figuras: [Figura] = [cuadrado, rectangulo]

let areaTotal = calcularAreaTotal(figuras: figuras)
print("Área total: \(areaTotal)")

