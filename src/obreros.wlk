class Obrero{
	var bLicencia = false
	
	method estaDeLicencia(){
		return bLicencia
	}
	
	method tomarLicencia(){
		bLicencia = true
	}
	
	method volverDeLicencia(){
		bLicencia = false
	}
	
	method trabajar(obra)
	
}

class Albanil inherits Obrero{
	var ladrillos = 100
    var metrosDeParedEchos = 0
    
    var aConstruir = ladrillos-97
    
    
    override method trabajar(obra){
        obra.consumirLadrillos(ladrillos)
        
    	metrosDeParedEchos = aConstruir
    	
    	
    	
    }
    
}

class Gasista inherits Obrero{
	var metrosCanio = 3
	var fosforos = 20
	var metrosDeCanioEchos =0
	var aConstruir = metrosCanio
	
	override method trabajar(obra){
		obra.consumirFosforos(fosforos)
		obra.consumirMetrosCanio(metrosCanio)
		metrosDeCanioEchos = aConstruir
	}
	
}

class Plomero inherits Obrero{
	var metrosDeCanio = 10
	var arandelas = 30
	var metrosDeCanioEchos =0
	var aConstruir=metrosDeCanio-1
	
	
	override method trabajar(obra){
		obra.consumirMetrosCanio(metrosDeCanio)
		obra.consumirArandelas(arandelas) 
		metrosDeCanioEchos = aConstruir
	}
}

class Electricista inherits Obrero{
	var metrosDeCable = 4
	var rolloCinta = 1
	var metrosDeCableEchos =0
	var aConstruir = metrosDeCable
	
	override method trabajar(obra){
		obra.consumirMetrosCable(metrosDeCable) 
		obra.consumirRolloCinta(rolloCinta) 
		metrosDeCableEchos = aConstruir
	
	
	}
	
}