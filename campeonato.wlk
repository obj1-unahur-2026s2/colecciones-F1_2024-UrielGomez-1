import pilotos.*
import escuderias.*
import neumaticos.*

object campeonato {
 const pilotos = []
 
 method registrarPiloto(piloto) {
     pilotos.add(piloto)
 }
 method darDeBajaPiloto(piloto) {
     pilotos.remove(piloto)
 }
 method reiniciar() {
    pilotos.clear()
 }
 method hayPilotoDeEscuderia(escuderia) {
    return pilotos.any({ piloto => piloto.escuderia() == escuderia })
 }
 method puntosPorEscuderia(escuderia) {
    return pilotos.filter({ piloto => piloto.escuderia() == escuderia }).sum({ piloto => piloto.puntos() })
 }
 method registrarResultadoCarrera(ganador, segundo) {
    ganador.ganarCarrera()
    ganador.companieroLlegaSegundo(segundo)
 }

 method registrarCierreFecha(ganador, segundo, quienHizoVueltaRapida) {
    ganador.ganarCarrera()
    ganador.companieroLlegaSegundo(segundo)
    quienHizoVueltaRapida.hizoVueltaRapida()
 }

 method deltaPuntos() {
    if (pilotos.isEmpty()) {
        return 0
    }
    return pilotos.max({ piloto => piloto.puntos() }).puntos() - pilotos.min({ piloto => piloto.puntos() }).puntos()
 }

 method pilotoLider() {
    return pilotos.max({ piloto => piloto.puntos() })
 }

 method esCompetitivo() {
    return self.deltaPuntos() < 100
 }
}