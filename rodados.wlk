class Corsa{
   var property color
    //var position
   method capacidad()= 4
   method velocidadMaxima()= 150
   method peso()= 1300
}
class Kwid{
   var property tieneTanqueAdicional 
   method capacidad()= if(tieneTanqueAdicional) 3 else 4
   method velocidadMaxima()= if(tieneTanqueAdicional) 110 else 120
   method peso()= 1200 + if(tieneTanqueAdicional) 150 else 0
   method color()="azul"
}
object  trafic{
   var property interior = comodo
   var property motor = pulenta
   method capacidad()= interior.capacidad()
   method velocidadMaxima()= motor.velocidad()
   method peso()= 4000 + interior.peso() + motor.peso()
   method color()= "blanco"
}
class Especial{
   var property capacidad
   var property velocidadMaxima
   var property peso
   var property color
   method velocidadMaxima()= 
    velocidadMaxima.min(topeVelocidadMaxima.tope()
    )
}
object topeVelocidadMaxima{
    var property tope = 200
}
object comodo{
   method capacidad()=5 
   method peso()= 700
}
object popular{
   method capacidad()=12
   method peso()= 1000
}
object pulenta{
   method peso()= 800
   method velocidad()= 130
}
object bataton{
   method peso()= 500
   method velocidad()= 80
}
