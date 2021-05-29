import wollok.game.*
import elementos.*
import tanque.*
import config.*


object pantallaInicial {
	
	const property position = game.origin()
	
	method image() = "wollanzer.jpg"
	
	method iniciar() {
		game.addVisual(self)
		keyboard.enter().onPressDo({ nivelUno.iniciar() })
	}
}

object nivelUno {
	
	method iniciar() {
		game.clear()
		self.paredDefensa()
		self.agregarObjetosIniciales()
		self.configurarTeclasYMecanismos()
	
	}	
	
	method agregarObjetosIniciales(){
		game.addVisual(tanque)
		game.addVisual(defensa)
	
	}
	
	method paredDefensa(){
		game.addVisual(new Ladrillo(position = game.at(5,0)))
		game.addVisual(new Ladrillo(position = game.at(5,1)))
		game.addVisual(new Ladrillo(position = game.at(6, 1)))
		game.addVisual(new Ladrillo(position = game.at(7,1)))
		game.addVisual(new Ladrillo(position = game.at(7,0)))
	}
	
	method configurarTeclasYMecanismos(){
		config.configurarTeclas()
		//config.configurarColisiones()
		config.configurarMovimientosYDisparosAleatoriosEnemigos()
	}

}