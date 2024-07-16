import UIKit

/*
 Actividad 2: Tipos de Datos y Operadores
 Ejercicio 1: Calcular estadísticas básicas de un array de enteros
 ● Instrucción: Escribe una función llamada calcularEstadisticas que acepte
 un array de enteros y devuelva una tupla con la media, mediana y moda del array.
 Implementa la lógica para calcular cada una de estas estadísticas y prueba la
 función con un array de ejemplo.
 */

//función para el ordenamiento de numeros
func ordenarValores(nume: [Int])->  [Int]{
    return nume.sorted()
}
//Función para calcular la estadistica de la media, moda y mediana
func calcularEstadisticas(nume: [Int]) -> (media: Double, moda: Double, mediana: Double){
    
    nume.forEach{
        print($0)
    }
    
    //Media
    var suma = nume.reduce(0, +)
    let media = Double(suma / nume.count)
    
    //Mediana
    let valoresOrdenados = nume.sorted()
    let indexMedio = valoresOrdenados.count / 2
    var mediana: Double = 0
    
    if nume.count % 2 == 0 {
        let PreResult = (valoresOrdenados[indexMedio - 1] + valoresOrdenados[indexMedio])
        mediana = Double(PreResult)
    } else{
        mediana = Double(valoresOrdenados[indexMedio])
    }
    
    //moda
    var frecuencia: [Int: Int] = [:]
    for numero in nume{
        if let cuenta = frecuencia[numero]{
            frecuencia[numero] = cuenta + 1
        }
        else{
            frecuencia[numero] = 1
        }
    }
    
    let moda = Double(frecuencia.max(by: {a, b in a.value < b.value})?.key ?? 0)
    
    return (media: media, moda: moda, mediana: mediana)
}

let estadisticas = calcularEstadisticas(nume: [1, 2, 3, 3, 4, 4, 4, 5])
print("Media: \(estadisticas.media)")
print("Mediana: \(estadisticas.mediana)")
print("Moda: \(estadisticas.moda)")

/*
let fruitPrice = ["grapes": 2.5, "Apricot": 3.5, "Pear": 1.6]

//Compare the values and return maximun key-value pair
let maximunPrice = fruitPrice.max { $0.value < $1.value}

print(maximunPrice!)
*/
