import escuderias.*
import neumaticos.*

object verstappen {
    var puntos = 437
    var neumaticoActual = blando
    var vueltasUsadas = 0

    method escuderia() {
        return redBull
    }
    method puntos() {
        return puntos
    }
    method ganarCarrera() {
        puntos += 25
    }
    method hacerVueltaRapida() {
        if (puntos > 200) {
            puntos += 1
        }
    }

    method hizoVueltaRapida() {
        self.hacerVueltaRapida()
    }

    method companieroLlegaSegundo(piloto) {
    }

    method sumarUnaVuelta() {
        vueltasUsadas += 1
    }

    method vueltasQueLeQuedan() {
        return (neumaticoActual.duracion() - vueltasUsadas).max(0)
    }

    method rindeMejorPara(temperatura) {
        return neumaticoActual.rindeMejorPara(temperatura) && self.vueltasQueLeQuedan() > 0
    }

    method entrarAlPitStop(neumatico) {
        neumaticoActual = neumatico
        vueltasUsadas = 0
    }

    method reiniciar() {
        puntos = 437
        neumaticoActual = blando
        vueltasUsadas = 0
    }
}

object norris {
    var puntos = 374
    var neumaticoActual = blando
    var vueltasUsadas = 0

    method escuderia() {
        return mclaren
    }
    method puntos() {
        return puntos
    }
    method ganarCarrera() {
        puntos += 25
    }
    method hacerVueltaRapida() {
        if (puntos > 200) {
            puntos += 1
        }
    }

    method hizoVueltaRapida() {
        self.hacerVueltaRapida()
    }

    method companieroLlegaSegundo(piloto) {
        if (piloto.escuderia() == self.escuderia()) {
            piloto.sumarPuntos(3)
        }
    }

    method sumarPuntos(cantidad) {
        puntos += cantidad
    }

    method sumarUnaVuelta() {
        vueltasUsadas += 1
    }

    method vueltasQueLeQuedan() {
        return (neumaticoActual.duracion() - vueltasUsadas).max(0)
    }

    method rindeMejorPara(temperatura) {
        return neumaticoActual.rindeMejorPara(temperatura) && self.vueltasQueLeQuedan() > 0
    }

    method entrarAlPitStop(neumatico) {
        neumaticoActual = neumatico
        vueltasUsadas = 0
    }

    method reiniciar() {
        puntos = 374
        neumaticoActual = blando
        vueltasUsadas = 0
    }

}

object sainz {
    var carrerasConsecutivas = 0
    var puntos = 241
    var neumaticoActual = blando
    var vueltasUsadas = 0

    method escuderia() {
        return ferrari
    }
    method puntos() {
        return puntos
    }
    method ganarCarrera() {
        if (carrerasConsecutivas == 0) {
            puntos += 25
        } else {
            puntos += 25 + 10
        }
        carrerasConsecutivas += 1
    }
    method hacerVueltaRapida() {
    }

    method hizoVueltaRapida() {
        self.hacerVueltaRapida()
    }

    method companieroLlegaSegundo(piloto) {
    }

    method sumarPuntos(cantidad) {
        puntos += cantidad
    }

    method sumarUnaVuelta() {
        vueltasUsadas += 1
    }

    method vueltasQueLeQuedan() {
        return (neumaticoActual.duracion() - vueltasUsadas).max(0)
    }

    method rindeMejorPara(temperatura) {
        return neumaticoActual.rindeMejorPara(temperatura) && self.vueltasQueLeQuedan() > 0
    }

    method entrarAlPitStop(neumatico) {
        neumaticoActual = neumatico
        vueltasUsadas = 0
    }

    method reiniciar() {
        puntos = 241
        carrerasConsecutivas = 0
        neumaticoActual = blando
        vueltasUsadas = 0
    }
}

object leclerc {
    var puntos = 356
    var neumaticoActual = blando
    var vueltasUsadas = 0

    method escuderia() {
        return ferrari
    }
    
    method puntos() {
        return puntos
    }
    method ganarCarrera() {
        puntos += 25
    }

    method hacerVueltaRapida() {
        puntos += 2
    }

    method hizoVueltaRapida() {
        self.hacerVueltaRapida()
    }

    method companieroLlegaSegundo(piloto) {
        piloto.sumarPuntos(-3)
    }

    method sumarPuntos(cantidad) {
        puntos += cantidad
    }

    method sumarUnaVuelta() {
        vueltasUsadas += 1
    }

    method vueltasQueLeQuedan() {
        return (neumaticoActual.duracion() - vueltasUsadas).max(0)
    }

    method rindeMejorPara(temperatura) {
        return neumaticoActual.rindeMejorPara(temperatura) && self.vueltasQueLeQuedan() > 0
    }

    method entrarAlPitStop(neumatico) {
        neumaticoActual = neumatico
        vueltasUsadas = 0
    }

    method reiniciar() {
        puntos = 356
        neumaticoActual = blando
        vueltasUsadas = 0
    }
}

object piastri {
  var puntos = 292
  var neumaticoActual = blando
  var vueltasUsadas = 0

  method escuderia() {
        return mclaren
    }
    method puntos() {
        return puntos
    }

    method ganarCarrera() {
        puntos += 25
    }

    method hacerVueltaRapida() {
    }

    method hizoVueltaRapida() {
        self.hacerVueltaRapida()
    }

    method companieroLlegaSegundo(piloto) {
    }

    method sumarPuntos(cantidad) {
        puntos += cantidad
    }

    method sumarUnaVuelta() {
        vueltasUsadas += 1
    }

    method vueltasQueLeQuedan() {
        return (neumaticoActual.duracion() - vueltasUsadas).max(0)
    }

    method rindeMejorPara(temperatura) {
        return neumaticoActual.rindeMejorPara(temperatura) && self.vueltasQueLeQuedan() > 0
    }

    method entrarAlPitStop(neumatico) {
        neumaticoActual = neumatico
        vueltasUsadas = 0
    }

    method reiniciar() {
        puntos = 292
        neumaticoActual = blando
        vueltasUsadas = 0
    }
}