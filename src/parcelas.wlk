class Parcela {
	var property ancho
	var property largo
	var property horasDeSolPorDia
	var property plantas = #{}
	
	method superficie() = ancho * largo
	method cantidadPlantasQueTolera(){
		return 	if(ancho > largo){self.superficie() / 5}
				else{self.superficie() / 3 + largo}
	}
	method tieneComplicaciones(){
		return plantas.any({p => p.horasDeSolQueTolera() < horasDeSolPorDia})
	}
	method plantar(planta){
		if(not self.estaLlena() and not(planta.horasDeSolQueTolera() + 2 < horasDeSolPorDia)){
				plantas.add(planta)
			} 
		else{
			self.error("no se puede agregar la planta a la parcela. Las razones 
			son que la parcela ya esta llena o que la planta no tolera las horas
			 de sol que hay al dia en la parcela")
		}
	}
	method estaLlena(){
		return plantas.size() == self.cantidadPlantasQueTolera()
	}
}
