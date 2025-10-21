//class padre{}...class hijo inherits padre{},, super() nos referimos al padre
class Plaga{
  var poblacion
  
  method transmiteEnfermedad()=poblacion >= 10

  method atacarElemento(){
     poblacion += poblacion* 0.1
  }
}
class PlagaDeCucaracha inherits Plaga{
  var pesoPromedio

  method nivelDeDanio() = poblacion / 2

  override method transmiteEnfermedad()= super() and (pesoPromedio >= 10 )// le pide L PADRE X MEDIO DE SUP
  override method atacarElemento(){
    super() 
    pesoPromedio +=2
  }
}
class PlagaDePulgas inherits Plaga{

  method nivelDeDanio() = poblacion *2
}
class PlagaDeGarrapatas inherits PlagaDePulgas{
override method atacarElemento(){
  poblacion += poblacion * 0.2
}
}
class PlagaDeMosquitos inherits Plaga{

 method nivelDeDanio() = poblacion

 override method transmiteEnfermedad()= super() and ((poblacion % 3 ) == 0)
}

class Hogar{
 var nivelDeMugre
 const confortQueOfrece

 method esBueno()= nivelDeMugre <= (confortQueOfrece/2)

 method esAtacadoPor(unaPlaga){
  nivelDeMugre += unaPlaga.nivelDeDanio()
  unaPlaga.atacarElemento()}

}
class Huerta{
  var capacidadDeProduccion


   method esBueno()=capacidadDeProduccion > nivelMinimo.valor()
   method esAtacadoPor(unaPlaga){
    capacidadDeProduccion = 0.max(capacidadDeProduccion - (unaPlaga.nivelDeDanio()* 0.1))
    capacidadDeProduccion = 0.max(capacidadDeProduccion - if (unaPlaga.transmiteEnfermedad()) 10 else 0)
    unaPlaga.atacarElemento()
   }

}
object nivelMinimo{
 var property valor= 100
}
class Mascota{
  var nivelDeSalud

   method esBueno()= nivelDeSalud > 250
   method esAtacadoPor(unaPlaga){
    nivelDeSalud =0.max(nivelDeSalud - if (unaPlaga.transmiteEnfermedad()unaPlaga.nivelDeDanio()else 0))
    unaPlaga.atacarElemento()
   }
}
class Barrio{
  const elementos=#{}

  method losBuenos()= elementos.filter({e =>e.esBueno()})
  method losMalos()= elementos.filter({e => not e.esBueno()})

  method esCopado()= self.losBuenos().size() > self.losMalos().size()
  
}
