import wollok.game.*

object reproductor {
	
	method playMusicaMenu() {
		const track = game.sound("menuInicial.mp3")
		self.ajustarVolumenYLoopA(track)
		game.schedule(100,{track.play()})
		keyboard.enter().onPressDo({track.stop()})
	}
	
	method play(sound, time) {
		sound.volume(0.2)
		sound.play()
		game.schedule(time,{sound.stop()})
	}
	
	method playDisparo() {
		const disparo = game.sound("cañon.mp3")
		self.play(disparo, 1000)
	}
	
	method playQuejido() {
		const doh = game.sound("doh.mp3")
		self.play(doh, 1000)
	}
	
	method playNivelSuperado() {
		const triunfo = game.sound("MetalSlug.mp3")
		self.play(triunfo, 7000)
	}
	
	method playFestejo() {
		const festejo = game.sound("woohoo.mp3")
		self.play(festejo, 1000)
	}
	
	method playLamento() {
		const lamento = game.sound("nooo.mp3")
		self.play(lamento, 3000)
	}
		
	method playGameOver() {
		const gameOver = game.sound("gameOver.mp3")
		const track = game.sound("Villainous.mp3")
		self.play(gameOver, 1100)
		self.ajustarVolumenYLoopA(track)
		track.play()
		keyboard.any().onPressDo({track.stop()})
		
	}
	
	method playExplosion() {
		const explosion = game.sound("explosion.mp3")
		self.play(explosion, 1500)
	}
	
	method playWinner() {
		const track = game.sound("winner.mp3")
		self.ajustarVolumenYLoopA(track)
		track.play()
		keyboard.any().onPressDo({track.stop()})
	}
	
	method ajustarVolumenYLoopA(sonido) {
		sonido.volume(0.2)
		sonido.shouldLoop(true)
	}
}