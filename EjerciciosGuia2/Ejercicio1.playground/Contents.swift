import UIKit

// Enumeración EstadoPedido
enum EstadoPedido {
    case procesando
    case enviado
    case entregado
}

// Protocolo NotificacionPedido
protocol NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido)
}

// Clase Pedido
class Pedido {
    var estado: EstadoPedido
    var delegado: NotificacionPedido?
    
    init(estado: EstadoPedido) {
        self.estado = estado
    }
    
    func cambiarEstado(nuevoEstado: EstadoPedido) {
        self.estado = nuevoEstado
        if let delegado = delegado {
            delegado.notificarCambioDeEstado(nuevoEstado: nuevoEstado)
        }
    }
}

// Clase GestorPedido que implementa el protocolo NotificacionPedido
class GestorPedido: NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) {
        print("El estado del pedido ha cambiado a: \(nuevoEstado)")
    }
}

// Ejemplo de uso
let gestor = GestorPedido()
let pedido = Pedido(estado: .procesando)
pedido.delegado = gestor
pedido.cambiarEstado(nuevoEstado: .enviado)

