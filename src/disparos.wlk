import wollok.game.*
import pantallainicio.*
import movimientos.*
import personajes.*
import enemigos.*

class Ataque {
	var property position
	
	method hacia(direccion) {
		if(direccion == 1) {
			game.onTick(300, "moverIzq", {
				//if(game.colliders(self) != []) {
				//	self.colision()
				//} else {
					position = position.left(1)
				//}
			})
		} else {
			game.onTick(300, "moverDer", {
				//if(game.colliders(self) != []) {
				//	self.colision()
				//} else {
					position = position.right(1)
				//}
			})
		}
	}
	method colision() {
		 /*game.onCollideDo(self, {alguien => alguien.perderVida(danio)})
		 game.removeVisual(self)*/
	}
}

class AtaqueGoku inherits Ataque {
	method image() = "img/ataque.png"
}

class AtaqueVegeta inherits Ataque {
	
}