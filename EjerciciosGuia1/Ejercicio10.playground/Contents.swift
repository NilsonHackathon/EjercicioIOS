import UIKit

/*
 Ejercicio 2: Crear un struct Rectángulo con métodos para calcular el área y el
 perímetro
 ● Instrucción: Define un struct Rectángulo con propiedades para ancho y alto.
 Implementa métodos para calcular el área y el perímetro. Crea una instancia de
 Rectángulo y llama a los métodos para imprimir el área y el perímetro.
 */

struct Rectangulo{
    var ancho: Double
    var alto: Double
    
    func calcularArea() -> Double{
        return ancho + alto
    }
    
    func calcularPerimetro() -> Double{
        return 2 * (ancho + alto)
    }
}

var miRectanguo = Rectangulo(ancho: 5.0, alto: 10.0)
print("Area: \(miRectanguo.calcularArea())")
print("Perimetro: \(miRectanguo.calcularPerimetro())")
