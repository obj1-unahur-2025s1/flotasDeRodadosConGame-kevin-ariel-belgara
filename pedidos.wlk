import rodados.*

class Pedido {
    var property distancia
    var tiempoMaximo
    var property pasajeros
    const property coloresIncompatibles = #{}

    method acelerar() {tiempoMaximo = 1.max(tiempoMaximo - 1)}
    method relajar() {tiempoMaximo = tiempoMaximo + 1}
    method initialize() {
        if(!distancia.between(1,1000)) {
            self.error(distancia.toString() + "no es valida")
        }
        if(!tiempoMaximo.between(1,100)) {
            self.error(tiempoMaximo.toString() + "no es valida")
        }
        if(!pasajeros.between(1,100)) {
            self.error(pasajeros.toString() + "no es valida")
        }

    }
    method agregarColorIncompatible(unColor) {
        if(!coloresValidos.listaColores().contains(unColor)) {
            self.error(unColor.toString() + " no es un color valido")
        }
        coloresIncompatibles.add(unColor)
    }
    method velocidadRequerida() = distancia / tiempoMaximo
    method puedeSatisfacer(unAuto) = 
        unAuto.velocidadMaxima() >= self.velocidadRequerida() + 10
        && unAuto.capacidad() >= pasajeros
        && not self.colorIncompatible(unAuto.color())
    method colorIncompatible(unColor) = coloresIncompatibles.contains(unColor)

}
