//: Mini Tarea

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadinicial: Velocidades){
        self = velocidadinicial
    }
}



class Auto {
    
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadinicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        var valorInt : Int = 0
        var valorString : String = ""
        
        if self.velocidad == Velocidades.Apagado {
            self.velocidad = Velocidades.VelocidadBaja
            valorString = "Velocidad Baja"
        } else if self.velocidad == Velocidades.VelocidadBaja {
            self.velocidad = Velocidades.VelocidadMedia
            valorString = "Velocidad Media"
        }  else if self.velocidad == Velocidades.VelocidadMedia {
            self.velocidad = Velocidades.VelocidadAlta
            valorString = "Velocidad Alta"
        } else if self.velocidad == Velocidades.VelocidadAlta {
            self.velocidad = Velocidades.VelocidadMedia
            valorString = "Velocidad Media"
        }
        
        valorInt = self.velocidad.rawValue
        
        
        return (actual: valorInt, velocidadEnCadena: valorString)
    }
}


var auto = Auto()

for i in 0 ..< 20 {
    print(auto.cambioDeVelocidad())
}

// Finalmente, la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.
// en las pruebas de "salida valida" menciona en la primera posicion 0 Apagado, pero pide regresar la velocidad actual en cadena y la velocidad actual nunca sera Apagado al ejecutar el primer cambio de velocidad

