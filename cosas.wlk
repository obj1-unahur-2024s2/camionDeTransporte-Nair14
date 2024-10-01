object knightRider {

    method peso() = 500
    method peligrosidad() = 10
    method bultos() =1
    method consecuencia() {}

}

object bumblebee {

    var estado = auto
    method peso() = 800
    method peligrosidad()= estado.peligrosidad()

    method transformar(unEstado) {
        estado = unEstado
    }

    method bultos() = 2

    method consecuencia() {
        estado = robot
    }

}


object robot {
    method peligrosidad() = 30
}

object auto {
    method peligrosidad() = 15
}


object ladrillos {
    var property cantidad = 0
    method peso() = cantidad * 2
    method peligrosidad() = 2
}

object arenal {
    var property peso = 0
    method peligrosidad() = 1 
}

object antiaerea {
    var estaCargada = false

    method cargar() {
        estaCargada = true
    }
    method descargar() {
        estaCargada = false
    }
    
    method consecuencia(){
        self.cargar()
    }

}


object misiles {
    method peso() = 300
    method peligrosidad() = 100
}

object contenedor {
    const property cosas = []
    method peso() = 100 + cosas.sum({cosa => cosa.peso()})
    method peligrosidad() = if(cosas.size()>0){cosas.max({cosa => cosa.peligrosidad()}).peligrosidad()}else{0}

    method agregarCosa(unaCosa) {
      cosas.add(unaCosa)
    }
}

object residuos {
    var property peso = 0
    method peligrosidad() = 200 
}

object embalaje {
    var property contenido = null
    method peso() = contenido.peso()
    method peligrosidad() = contenido.peligrosidad()/2
}