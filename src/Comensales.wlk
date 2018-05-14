class Comensal {
	
	var property porcentajePropina = 0.2
	
	method elegirBebida(menu)
	method elegirPlato(menu)
	
	method propina(cuenta) {
		return cuenta * porcentajePropina
	}
	
	method gasto(menu) {
		var cuenta = self.elegirBebida(menu).precio() + self.elegirPlato(menu).precio()
		return cuenta + self.propina(cuenta)
	}
}

class Ricachon inherits Comensal {
	override method elegirBebida(menu) {
		return menu.bebidas().max({bebida => bebida.precio()})
	}
	
	override method elegirPlato(menu) {
		return menu.plato().max({bebida => bebida.precio()})
	}
}

class Gasolero inherits Comensal {
	override method elegirBebida(menu) {
		return menu.bebidas().min({bebida => bebida.precio()})
	}
	
	override method elegirPlato(menu) {
		return menu.plato().min({bebida => bebida.precio()})
	}
}

class GasoleroPlus inherits Gasolero {
	override method propina(cuenta) {
//		return cuenta * if (cuenta > 80) {porcentajePropina} else {0}
//		return super(cuenta) * if(cuenta > 80) {1} else {0}
		return if (cuenta > 0) {super(cuenta)} else {0}
	}
}

