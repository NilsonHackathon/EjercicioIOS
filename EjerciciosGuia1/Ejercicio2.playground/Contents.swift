import UIKit

/*
 Ejercicio 2: Calcular el área de un triángulo utilizando la fórmula de Herón
 ● Instrucción: Escribe una función llamada calcularAreaTriangulo que acepte
 tres parámetros a, b, y c de tipo Double representando los lados de un triángulo.
 La función debe validar si los lados forman un triángulo válido y, de ser así,
 calcular el área utilizando la fórmula de Herón. Devuelve nil si los datos no son
 válidos.
 */

func calcularAreaTriangulo(a: Double, b: Double, c: Double) -> Double? {
    let expresion = a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a
    
    guard expresion == false else {
        print("Los lados ingresados no forman un triangulo valido")
        return nil
    }
    
    var s = (a + b + c) / 2
    
    var preResult = s * (s - a) * (s - b) * (s - c)
    
    return sqrt(preResult)
}

print((calcularAreaTriangulo(a: 10, b: 15, c: 20)) ?? 0)
