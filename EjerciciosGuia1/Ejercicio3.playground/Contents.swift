import UIKit

func ordenarValores(nume: [Int])->  [Int]{
    return nume.sorted()
}

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
    var frecuencia = [Int: Int] = [:]
    for numero in nume{
        if let cuenta = frecuencia[numero]{
            frecuencia[numero] = cuenta + 1
        }
        else{
            frecuencia[numero] = 1
        }
    }
    
    
    return (media: media, moda: 0, mediana: mediana)
}

print("Moda: ")

/*
let fruitPrice = ["grapes": 2.5, "Apricot": 3.5, "Pear": 1.6]

//Compare the values and return maximun key-value pair
let maximunPrice = fruitPrice.max { $0.value < $1.value}

print(maximunPrice!)
*/
