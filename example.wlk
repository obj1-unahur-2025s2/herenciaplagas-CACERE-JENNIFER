//class padre{}...class hijo inherits padre{},, super() nos referimos al padre
class Plaga{
  const poblacion
  
  method transmiteEnfermedad()=poblacion >= 10
}
class PlagaDeCucaracha inherits Plaga{
  const pesoPromedio

  method nivelDeDanio() = poblacion / 2

  override method transmiteEnfermedad()= super() and (pesoPromedio >= 10 )// le pide L PADRE X MEDIO DE SUPER()
}
class PlagaDePulgas inherits Plaga{

  method nivelDeDanio() = poblacion *2
}
class PlagaDeGarrapatas inherits PlagaDePulgas{

}
class PlagaDeMosquitos inherits Plaga{

 method nivelDeDanio() = poblacion

 override method transmiteEnfermedad()= super() and ((poblacion % 3 ) == 0)
}

class Hogar{
 const nivelDeMugre
 const confortQueOfrece

 method esBueno()= nivelDeMugre ==- (confortQueOfrece /2)
}
class Huerta{
  const capacidadDeProduccion
  const nivel

   method esBueno()=capacidadDeProduccion > nivel

}
class Mascota{
  const nivelDeSalud

   method esBueno()= nivelDeSalud > 250

}
class Barrio{
  const barrioEsCopado =#{}
  
 
}
