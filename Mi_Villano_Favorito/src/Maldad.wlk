import ObjetosARobar.*
import Villano.*

object congelar {
	var property nivelDeConcentracionEstablecido = 500
	
	method realizarMaldad(unVillano, unosMinions, unaCiudad) {
		unaCiudad.bajarTemperatura(30)
		self.contabilizarMaldad(unVillano, unosMinions)
		self.premiarMinions(unVillano, unosMinions)
	}
	
	method contabilizarMaldad(unVillano, unosMinions) {
			unVillano.sumarCantidadDeMaldadAMinions(unosMinions)
	}
	
	method puedeParticipar(unMinion) = unMinion.tieneArma("Rayo Congelante") and unMinion.tieneNivelDeConcentracionMayorA(nivelDeConcentracionEstablecido)

	method premiarMinions(unVillano, unosMinions) {
		unVillano.dar10BananasAMinions(unosMinions)
	}
}

class Robar {
	const objetoARobar
	
	method realizarMaldad(unVillano, unosMinions, unaCiudad) {
		unaCiudad.perder(objetoARobar)
		self.contabilizarMaldad(unVillano, unosMinions)
		self.premiarMinions(unVillano, unosMinions)
	}
	
	method contabilizarMaldad(unVillano, unosMinions) {
			unVillano.sumarCantidadDeMaldadAMinions(unosMinions)
	}
	
	method puedeParticipar(unMinion) = unMinion.esPeligroso() and objetoARobar.cumpleRequisitos(unMinion)
	
	method premiarMinions(unVillano, unosMinions) {
		objetoARobar.premiarMinions(unVillano, unosMinions)
	}
}