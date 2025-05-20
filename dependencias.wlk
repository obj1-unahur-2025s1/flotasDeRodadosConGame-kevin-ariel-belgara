import wollok.game.*
class Dependencia{
    var property cantidadEmpleados 
    const flota = []
    method agregarAFlota(rodado){
        flota.add(rodado)
    }
    method quitarDeFlota(rodado){
        flota.remove(rodado)
    }
    method tieneAlMenosRodados(cantidad)= flota.size() >= cantidad
    method pesoTotalFlota()=flota.sum({rodado=>rodado.peso()})
    method cantidadTotalRodados()= flota.size()
    method todosPuedenIrA100KM()= flota.all({rodado=>rodado.velocidadMaxima()>=100})
    method estaBienEquipada()= self.cantidadTotalRodados() >=3 and self.todosPuedenIrA100KM()
    //method estaBienEquipada()=self.tieneAlMenos3Empleados() and self.todosPuedenIrA100KM()
    method todosLosDeColor(unColor)=flota.filter({rodado=>rodado.color() == unColor})
    method capacidadTotalEnColor(color)= self.todosLosDeColor(color).sum({rodado=>rodado.capacidad()})
    method rodadoMasRapido()=flota.max({rodado=>rodado.velocidadMaxima()})
    method colorDelRodadoMasRapido()= self.rodadoMasRapido().color()
    method capacidadTotal()=flota.sum({rodado=>rodado.capacidad()})
    method capacidadFaltante()= 0.max(cantidadEmpleados - self.capacidadTotal())
    method tieneAlMenos40Empleados()= cantidadEmpleados >= 40
    method esGrande()= self.tieneAlMenos40Empleados() and self.tieneAlMenosRodados(5)

 
}