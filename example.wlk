class Corsa{
   var property color
   method capacidad()= 4
   method velocidadMaxima()= 150
   method peso()= 1300
}
class RenaultKwid{
   var property tanqueAdicional 
   method capacidad()= if(tanqueAdicional) 3 else 4
   method velocidadMaxima()= if(tanqueAdicional) 110 else 120
   method peso()= if(tanqueAdicional) 1350 else 1200
   method color()="azul"
}
class Trafic{

}

