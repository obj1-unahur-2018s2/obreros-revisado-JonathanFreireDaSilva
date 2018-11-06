class Obra{
	var property ladrillos 
	var property metrosDeCable
	var property metrosDeCanio
	var property arandelas
	var property rolloCinta
	var property fosforos
	var plantilla = []
	var property fondos
	
	
	method consumirLadrillos(cuanto){
		ladrillos = ladrillos - cuanto
	}
	
		
	method consumirMetrosCable(cuanto){
		metrosDeCable = metrosDeCable - cuanto
	}
	
		
	method consumirMetrosCanio(cuanto){
		metrosDeCanio = metrosDeCanio - cuanto
	}
		
	method consumirArandelas(cuanto){
		arandelas = arandelas - cuanto
	}
	
		
	method consumirRolloCinta(cuanto){
		rolloCinta = rolloCinta - cuanto
	}
	
		
	method consumirFosforos(cuanto){
		fosforos = fosforos - cuanto
	}
	
	method agregarObrero(obrero){
		plantilla.add(obrero)
		obrero.agregarAobra(self)
	}
	
	method quitarObrero(obrero){
		plantilla.remove(obrero)
	}
	
	method plantilla(){
		return plantilla
	}
	
	method obrerosDiponibles(){
		return plantilla.filter({porlic=>!porlic.estaDeLicencia()})
		
			}
			
	method iniciarObra(){
		
		self.obrerosDiponibles().forEach({hacer=>hacer.trabajar(self)})
		
	}	
	
	method totalDeuda(){
		return plantilla.map({porjornada=>porjornada.debeCobrar()}).sum()
		 
	}
	
	method registrarPagos(){
		fondos = fondos - self.totalDeuda()
		plantilla.forEach({pagar=>pagar.cobrar()})
		
	}
	
	
	
//	method finalizo(){
//		return self.obrerosDiponibles().all({echo=>echo.})
// }	
}