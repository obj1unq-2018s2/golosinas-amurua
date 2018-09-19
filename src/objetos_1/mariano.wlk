import golosinas.*

object mariano {
	var bolsaGolosinas = [bombon, alfajor, chupetin, caramelo]
	
	method comprar(golosina) {
		bolsaGolosinas.add(golosina)
	}
	
	method desechar(golosina) {
		bolsaGolosinas.remove(golosina)
	}
	
	method golosinas() = bolsaGolosinas
	
	method probarGolosinas() {
		bolsaGolosinas.forEach({golosina => golosina.mordisco()})
	}
	
	method hayGolosinasSinTACC() = bolsaGolosinas.any({golosina => golosina.libreGluten()})
	
	method preciosCuidados() = bolsaGolosinas.any({golosina => golosina.precio() <= 10})
	
	method golosinaDeSabor(unSabor) {
			return bolsaGolosinas.find({golosina => golosina.gusto() == unSabor})
	}
	
	method golosinasDeSabor(unSabor) = bolsaGolosinas.filter({golosina => golosina.gusto() == unSabor})
	
	method sabores() = bolsaGolosinas.map({golosina => golosina.gusto()}.asSet())

	method golosinaMasCara() = bolsaGolosinas.max({golosina => golosina.precio()})
	
	method pesoGolosinas() = bolsaGolosinas.sum({golosina => golosina.peso()})
	
	method gustosFaltantes(golosinasDeseadas) {
		var lr = golosinasDeseadas
		lr.removeAll(bolsaGolosinas)
		
		return lr	
	}
	
	method golosinasFaltantes(gustosDeseados) {
		var lr = gustosDeseados
		var gustosBolsa = bolsaGolosinas.map({golosina => golosina.gusto()})
		
		lr.removeAll(gustosBolsa)
		
		return gustosBolsa	
	}
}