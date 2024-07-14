import UIKit

/*
 Actividad 5: Programación Orientada a Objetos
 Ejercicio 1: Crear una clase Coche y un método para describirlo
 ● Instrucción: Define una clase Coche con propiedades para marca, modelo y
 año. Implementa un método describir que devuelva una cadena con la
 descripción del coche. Crea una instancia de Coche y llama al método
 describir.
 */

class Coche{
    var marca: String
    var modelo: String
    var año: Int
    
    init(marca: String, modelo: String, año:Int){
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }
    
    func describir() -> String{
        return "Coche: \(marca), \(modelo), Año \(año)"
    }
}

let miCoche = Coche(marca: "Zuzuki", modelo: "Xpresso", año: 2024)
print(miCoche.describir())
