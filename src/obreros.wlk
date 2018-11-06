import uocra.*
class Obrero{
	var property obras = []
	var bLicencia = false
	var property jornada=0
	
	method estaDeLicencia(){
		return bLicencia
	}
	
	method tomarLicencia(){
		bLicencia = true
	}
	
	method volverDeLicencia(){
		bLicencia = false
	}
	
	method trabajar(obra){
		jornada++
	}
	
	method debeCobrar()
	
	method cobrar(){
		jornada=0
	}
	
	method agregarAobra(obra){
		obras.add(obra)
	}
	
	method quitarDeobra(obra){
		obras.remove(obra)
	}
	
	method obras(){
		return obras
	}
	
	method pasoPor(obra){
		return obras.contains(obra)
	}
}

class Albanil inherits Obrero{
	var ladrillos = 100
    var metrosDeParedEchos = 0
    
    var aConstruir = ladrillos-97
    
    
    override method trabajar(obra){
    	
        obra.consumirLadrillos(ladrillos)
        super(obra)
    	metrosDeParedEchos = aConstruir
   
    	
    }
    
    override method debeCobrar(){
    	return jornada*uocra.jornalAlbanil()
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
		 super(obra)
		metrosDeCanioEchos = aConstruir
		 	 
	}
	
	 override method debeCobrar(){
    	return jornada*uocra.jornalGasista()
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
		 super(obra)
		metrosDeCanioEchos = aConstruir
		 	 
	}
	
	 override method debeCobrar(){
    	return jornada*uocra.jornalPlomero()
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
		 super(obra)
		metrosDeCableEchos = aConstruir
	  
	
	}
	
	 override method debeCobrar(){
    	return jornada*uocra.jornalElectricista()
    }
	
}