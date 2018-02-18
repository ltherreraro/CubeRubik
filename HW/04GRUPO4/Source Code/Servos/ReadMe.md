## Módulo de Servomotores (PWM)

![0002238_towerpro-mg996r-metal-gear-servo-motor](https://user-images.githubusercontent.com/24497588/36211943-a5ea9406-1170-11e8-99f3-9719c79c2da6.jpeg)

* Referencia propuesta: MG996R
* Protocolo de comunicación: PWM
* Datasheet: www.electronicoscaldas.com/datasheet/MG996R_Tower-Pro.pdf
* Precio (unidad): COP 23,200
* Enlace de compra: https://www.ardobot.com/servomotor-mg996r-pi-oneria-metalica.html?___store=english&gclid=EAIaIQobChMI2L2Qytml2QIVEwaGCh2XgQbnEAQYASABEgJPOvD_BwE

El PWM (pulse-width modulation) es la modulación del ancho de un pulso de una señal. Esto se emplea para el envío de información o para el control de la energía que se envía a un sistema.

En el caso del servo motor, el PWM se usa para indicar al dispositivo la posición que en la que debe establecerse. El ángulo de la posicion esta dado por el porcentaje del pulso en alto (Duty Cycle) con respecto al periodo de la señal. Para el caso del servo MG996R, se maneja un periodo de 20ms.

#### Diagrama de Caja Negra

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/04GRUPO4/03document/Captura%20de%20pantalla%202018-02-13%20a%20la(s)%2010.14.04%20p.m..png)
