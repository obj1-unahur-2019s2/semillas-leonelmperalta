class Planta {
	var property anioObtencion
	var property altura
	
	method horasDeSolQueTolera()
	method esFuerte() =  self.horasDeSolQueTolera() > 10
	method daNuevasSemillas() = self.esFuerte()
	method espacioQueOcupa()
}

class Menta inherits Planta{
	override method horasDeSolQueTolera() = return 6
	override method daNuevasSemillas() {
		return super() or altura > 0.4
	}
	override method espacioQueOcupa() = return altura * 3
}

class Soja inherits Planta{
	override method horasDeSolQueTolera(){
		return 	if(altura < 0.5){6} 
				else if(altura >= 1){9}
				else{7}
	}
	override method espacioQueOcupa() = return altura / 2
	override method daNuevasSemillas(){
		return super() or anioObtencion > 2007
	}
}

class Quinoa inherits Planta{
	var property horasDeSolQueTolera
	override method espacioQueOcupa() = return 0.5
	override method daNuevasSemillas(){
		return super() or anioObtencion < 2005
	}
}

class SojaTransgenica inherits Soja{
	override method daNuevasSemillas() = return false
}

class HierbaBuena inherits Menta{
	override method espacioQueOcupa(){
		return super() * 2 
	}
}
