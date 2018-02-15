# Laser-Cut Rubik's Cube Solving Robot

## Integrantes del equipo de trabajo:
* Juan Diego Ocampo M. (jdocampom@unal.edu.co).
* Raúl Felipe Morales R. (rafmoralesri@unal.edu.co).
* Óscar Julian Umaña B. (ojumanab@unal.edu.co).

## Especificaciones

* Reconocimiento de color y posición de cada pieza para determinar el estado inicial del cubo.
* Aplicación del algoritmo para resolver el cubo de manera que no sea necesario registrar el estado actual del mismo después de cada movimiento.
* Desarrollo del mecanismo que permite aplicar los algoritmos al cubo girando 90º una cara a la vez.
* Comunicación inalámbrica para indicar los estados del robot.

## Módulo de Cámara

<img width="119" alt="screen shot 2018-02-14 at 10 15 09" src="https://user-images.githubusercontent.com/24497588/36211685-f448df64-116f-11e8-8788-0ea0636a70d1.png">

* Referencia propuesta: LinkSprite LS-Y201 Serial Port Camera Module
* Protocolo de comunicación: UART
* Datasheet: https://www.sparkfun.com/datasheets/Sensors/Imaging/1274419957.pdf 
* Precio: COP 120,000
* Enlace de compra: https://www.amazon.com/gp/product/B016PZIP3C

#### Diagrama de Caja Negra

<img width="566" alt="screen shot 2018-02-14 at 11 25 53" src="https://user-images.githubusercontent.com/24497588/36215343-db3785e8-1179-11e8-989f-46d800bbf125.png">

#### Mapa de Memoria

<img width="223" alt="screen shot 2018-02-14 at 10 37 06" src="https://user-images.githubusercontent.com/24497588/36213006-7f1b2d4c-1173-11e8-876f-2cddc3c20777.png">

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

## Módulo de comunicación inalámbrica por Bluetooth

![61rwnwc8p9l _sy355_](https://user-images.githubusercontent.com/24497588/36212234-69b4b48e-1171-11e8-9338-7e2a4284065d.jpg)

* Referencia propuesta: HC-06 Bluetooth Module
* Protocolo de comunicación: UART
* Datasheet: www.electronicoscaldas.com/datasheet/HC-Serial-Bluetooth-Products-User-Instructional-Manual_Wavesen.pdf
* Precio: COP 15,000
* Enlace de compra: https://articulo.mercadolibre.com.co/MCO-453222494-modulo-bluetooth-hc-06-arduino-_JM

#### Diagrama de Caja Negra

<img width="566" alt="screen shot 2018-02-14 at 11 25 53" src="https://user-images.githubusercontent.com/24497588/36215343-db3785e8-1179-11e8-989f-46d800bbf125.png">

#### Mapa de Memoria

<img width="225" alt="screen shot 2018-02-14 at 10 35 45" src="https://user-images.githubusercontent.com/24497588/36213092-c96d3818-1173-11e8-8768-28a92ffa6458.png">

## Tarjeta SD(PSI)

![memoria-micro-sd-adaptador-sandisk-16gb-class-10-80-mbps-d_nq_np_866401-mco25981010567_092017-f](https://user-images.githubusercontent.com/24497588/36212380-cd444398-1171-11e8-97d6-ff779ff8f71b.jpg)
 
* Referencia propuesta: SanDisk Secure Digital Card
* Protocolo de comunicación: SPI
* Datasheet: www.convict.lu/pdf/ProdManualSDCardv1.9.pdf
* Precio (unidad): COP 31,900
* Enlace de compra: https://articulo.mercadolibre.com.co/MCO-455873213-memoria-micro-sd-adaptador-sandisk-16gb-class-10-80-mbps-_JM

#### Diagrama de Caja Negra

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/04GRUPO4/03document/Captura%20de%20pantalla%202018-02-14%20a%20la(s)%2012.02.32%20a.m..png)

#### Mapa de Memoria

<img width="225" alt="screen shot 2018-02-14 at 10 34 39" src="https://user-images.githubusercontent.com/24497588/36212864-1628a666-1173-11e8-86b5-c521b2043811.png">

## Plan de trabajo

<img width="388" alt="screen shot 2018-02-14 at 09 55 03" src="https://user-images.githubusercontent.com/24497588/36210762-48fe1b44-116d-11e8-9d69-b52aefed66e6.png">

## Referencias:
