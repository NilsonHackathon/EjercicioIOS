import UIKit

/*
 Ejercicio 3: Definir un protocolo Volable y conformar clases Pájaro y Avión
 ● Instrucción: Define un protocolo Volable con un método volar. Crea dos
 clases Pájaro y Avión que conformen al protocolo Volable. Implementa el
 método volar en ambas clases con una implementación específica para cada
 una. Crea instancias de ambas clases y llama al método volar.
 */

protocol Volable{
    func volar() -> String
}

class Pajaro: Volable {
    func volar() -> String{
        return "El pajaro está volando"
    }
}

class Avion: Volable{
    func volar() -> String {
        return "El avión está despegando"
    }
}

var miPajaro = Pajaro()
var miAvion = Avion()
print(miPajaro.volar())
print(miAvion.volar())
