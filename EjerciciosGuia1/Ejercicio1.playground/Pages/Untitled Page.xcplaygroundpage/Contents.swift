import UIKit

func calcularAreaYPerimetro(ancho: Double, alto: Double) -> (area: Double, perimetro: Double){
    let area = ancho * alto
    let perimetro = 2 * (ancho + alto)
    
    return (area, perimetro)
}


var Res = calcularAreaYPerimetro(ancho: 5, alto: 10)
print("Area: ", Res.area)
print("Perimetro. ", Res.perimetro)
