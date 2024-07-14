import UIKit

// Protocolo Empleado
protocol Empleado {
    func calcularSalario() -> Double
}

// Clase EmpleadoBase que conforma el protocolo Empleado
class EmpleadoBase: Empleado {
    var salarioBase: Double
    
    init(salarioBase: Double) {
        self.salarioBase = salarioBase
    }
    
    func calcularSalario() -> Double {
        return salarioBase
    }
}

// Estructura EmpleadoContrato que conforma el protocolo Empleado
struct EmpleadoContrato: Empleado {
    var tarifaHora: Double
    var horasTrabajadas: Double
    
    func calcularSalario() -> Double {
        return tarifaHora * horasTrabajadas
    }
}

// Función para calcular el salario total de un array de empleados
func calcularSalarioTotal(empleados: [Empleado]) -> Double {
    var salarioTotal = 0.0
    
    for empleado in empleados {
        salarioTotal += empleado.calcularSalario()
    }
    
    return salarioTotal
}

// Ejemplo de uso
let empleadoBase = EmpleadoBase(salarioBase: 3000.0)
let empleadoContrato = EmpleadoContrato(tarifaHora: 20.0, horasTrabajadas: 100.0)
let empleados: [Empleado] = [empleadoBase, empleadoContrato]

let salarioTotal = calcularSalarioTotal(empleados: empleados)
print("Salario total: \(salarioTotal)")

