//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        var velocidadString : String
        var velocidadActual : Int
        switch velocidad {
        case .Apagado:
            velocidadString = "Apagado"
            velocidadActual = velocidad.rawValue
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidadString = "Velocidad baja"
            velocidadActual = velocidad.rawValue
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidadString = "Velocidad media"
            velocidadActual = velocidad.rawValue
            velocidad = Velocidades.VelocidadAlta
        default:
            velocidadString = "Velocidad alta"
            velocidadActual = velocidad.rawValue
            velocidad = Velocidades.VelocidadMedia
        }
        return (velocidadActual, velocidadString)
    }
}

var auto = Auto()
for i in 1...20 {
    var cambio = auto.cambioDeVelocidad()
    print("\(cambio.0), \(cambio.1) ")
}