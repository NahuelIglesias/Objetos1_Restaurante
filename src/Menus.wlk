class Menu {
	method bebidas() = #{vino, cerveza, agua, gaseosa}
}

class MenuParrilla inherits Menu {
	method platos() = #{asado, vacio, choripan}
}
class MenuMinutas inherits Menu {
	method platos() = #{milanesa, hamburguesa, papasFritas}
}
class MenuGourmet inherits Menu {
	override method bebidas() = super() + #{licuado, jugo}
	method platos() = #{sushi, conejo, ensaladaWaldorf}
}

//------Bebidas------
object agua {
	method precio() = 10
}
object vino {
	method precio() = 100
}
object cerveza {
	method precio() = 50
}
object gaseosa {
	method precio() = 40
}

//------Platos------
object asado {
	method precio() = 100
}
object vacio {
	method precio() = 120
}
object choripan {
	method precio() = 50
}
object milanesa {
	method precio() = 80
}
object hamburguesa {
	method precio() = 60
}
object papasFritas {
	method precio() = 30
}

//------Bebidas gourmet------
object licuado {
	method precio() = 80
}
object jugo {
	method precio() = 40
}

//------Platos gourmet------
object sushi {
	method precio() = 140
}
object conejo {
	method precio() = 160
}
object ensaladaWaldorf {
	method precio() = 80
}