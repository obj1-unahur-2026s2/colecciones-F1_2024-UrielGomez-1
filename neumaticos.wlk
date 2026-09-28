
object blando {
	method duracion() {
		return 15
	}

	method rindeMejorPara(temperatura) {
		return temperatura < 25
	}
}

object medio {
	method duracion() {
		return 30
	}

	method rindeMejorPara(temperatura) {
		return temperatura >= 25 && temperatura <= 40
	}
}

object duro {
	method duracion() {
		return 45
	}

	method rindeMejorPara(temperatura) {
		return temperatura > 40
	}
}