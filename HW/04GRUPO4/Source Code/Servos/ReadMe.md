## Módulo de Servomotores (PWM)

![0002238_towerpro-mg996r-metal-gear-servo-motor](https://user-images.githubusercontent.com/24497588/36211943-a5ea9406-1170-11e8-99f3-9719c79c2da6.jpeg)

* Referencia propuesta: MG996R
* Protocolo de comunicación: PWM
* Datasheet: www.electronicoscaldas.com/datasheet/MG996R_Tower-Pro.pdf
* Precio (unidad): COP 23,200
* Enlace de compra: https://www.ardobot.com/servomotor-mg996r-pi-oneria-metalica.html?___store=english&gclid=EAIaIQobChMI2L2Qytml2QIVEwaGCh2XgQbnEAQYASABEgJPOvD_BwE

El PWM (pulse-width modulation) es la modulación del ancho de un pulso de una señal. Esto se emplea para el envío de información o para el control de la energía que se envía a un sistema.

En el caso del servo motor, el PWM se usa para indicar al dispositivo la posición que en la que debe establecerse. El ángulo de la posicion esta dado por el porcentaje del pulso en alto (Duty Cycle) con respecto al periodo de la señal. Para el caso del servo MG996R, se maneja un periodo de 20ms.

<img width="559" alt="duty cicle wave form" src="https://user-images.githubusercontent.com/24497588/36355309-3b3593e4-14af-11e8-9017-53658528d377.png">

#### Diagrama de Caja Negra
<img width="523" alt="gpio bb diagram" src="https://user-images.githubusercontent.com/24497588/36355333-8bf055c6-14af-11e8-984e-75421aa79ba2.png">

#### Mapa de Memoria
<img width="398" alt="gpio memory map" src="https://user-images.githubusercontent.com/24497588/36355409-c2a7a2ee-14b0-11e8-8b8d-f3f65291e9b3.png">
