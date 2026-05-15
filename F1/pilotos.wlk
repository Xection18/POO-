import escuderias.*
object verstappen {
    var property puntos = 437
    var esGanador = false
    var cantidadDeVueltasRegistradas = 0

    method puntos() {
      return puntos
    }

    method escuderia() {
      return redBullRacing
    }

    method presupuestoAnual() {
      return 415
    }

    method ganarCarrera() {
      puntos = puntos + 25
      esGanador = true
    }

    method ejecutarVueltaRapida() {
        if (puntos > 200) {
            puntos = puntos + 1
        }
    }
}

object norris {
    var property puntos = 374
    var esGanador = false

    method puntos() {
      return puntos
    }

    method escuderia() {
      return mcLaren
    }

    method presupuestoAnual() {
      return 285
    }

    method ganarCarrera() {
        if (campeonato.segundoLugar().escuderia() == self.escuderia()) {
            puntos = puntos + 25 + 3
            esGanador = true
        }
        else {
            puntos = puntos + 25
            esGanador = true
        }
    }

    method ejecutarVueltaRapida() {
        if (puntos > 200) {
            puntos = puntos + 1
        }
    }   
}

object sainz {
    var property puntos = 241
    var esGanador = false
    var cantidadDeVueltasRegistradas = 0

    method puntos() {
      return puntos
    }

    method escuderia() {
      return ferrari
    }

    method presupuestoAnual() {
      return 320
    }

    method ganarCarrera() {
        if (esGanador) {
            puntos = puntos + 25 + 10
        }
        else {
            puntos = puntos + 25
            esGanador = true
        }
    }

    method ejecutarVueltaRapida() {

    }
}

object leclerc {
    var property puntos = 356
    var esGanador = false
    var cantidadDeVueltasRegistradas = 0

    method puntos() {
      return puntos
    }

    method escuderia() {
      return ferrari
    }

    method presupuestoAnual() {
      return 320
    }

    method ganarCarrera() {
      puntos = puntos + 25
      campeonato.segundoLugar().puntos(self.puntosDelSegundoLugar() + 3)
      esGanador = true
    }

    method puntosDelSegundoLugar() {
      return campeonato.segundoLugar().puntos()
    }

    method ejecutarVueltaRapida() {
      puntos = puntos + 2
    }
}

object piastri {
    var property puntos = 292
    var esGanador = false
    var cantidadDeVueltasRegistradas = 0
    var tipoDeNeumatico = neumaticoBlando

    method puntos() {
      return puntos
    }

    method escuderia() {
      return mcLaren
    }

    method presupuestoAnual() {
      return 420
    }

    method ganarCarrera() {
      puntos = puntos + 25
      esGanador = true
    }

    method ejecutarVueltaRapida() {

    }
}