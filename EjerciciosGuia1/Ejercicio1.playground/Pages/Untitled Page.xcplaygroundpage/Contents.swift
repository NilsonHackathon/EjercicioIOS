import UIKit
/*
 Actividad 1: Variables y Constantes
 Ejercicio 1: Calcular el área y el perímetro de un rectángulo
 ● Instrucción: Escribe una función llamada calcularAreaYPerimetro que
 acepte dos parámetros ancho y alto de tipo Double. La función debe devolver
 una tupla con el área y el perímetro del rectángulo. Utiliza constantes para los
 cálculos y llama a la función con valores de prueba, imprimiendo los resultados.

 */
func calcularAreaYPerimetro(ancho: Double, alto: Double) -> (area: Double, perimetro: Double){
    let area = ancho * alto
    let perimetro = 2 * (ancho + alto)
    
    return (area, perimetro)
}


var Res = calcularAreaYPerimetro(ancho: 5, alto: 10)
print("Area: ", Res.area)
print("Perimetro. ", Res.perimetro)
