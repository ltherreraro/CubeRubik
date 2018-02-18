# Laser-Cut Rubik's Cube Solving Robot

## Especificaciones

* Reconocimiento de color y posición de cada pieza para determinar el estado inicial del cubo.
* Aplicación del algoritmo para resolver el cubo de manera que no sea necesario registrar el estado actual del mismo después de cada movimiento.
* Desarrollo del mecanismo que permite aplicar los algoritmos al cubo girando 90º una cara a la vez.
* Comunicación inalámbrica para indicar los estados del robot.

## Módulo de Cámara

![lsy201 picture](https://user-images.githubusercontent.com/24497588/36355300-125b8d52-14af-11e8-905d-5bcbfc8026aa.jpg)

* Referencia propuesta: LinkSprite LS-Y201 Serial Port Camera Module
* Protocolo de comunicación: UART
* Datasheet: https://www.sparkfun.com/datasheets/Sensors/Imaging/1274419957.pdf 
* Precio: COP 120,000
* Enlace de compra: https://www.amazon.com/gp/product/B016PZIP3C

#### Diagrama de Caja Negra

![uart bb rev1](https://user-images.githubusercontent.com/24497588/36355493-14328448-14b2-11e8-9052-7f08852c1674.png)

#### Descripción Funcional

* #### UART

![tx flow](https://user-images.githubusercontent.com/24497588/36355572-2ec609aa-14b3-11e8-9d65-a4eca2a05919.png)

![rx flow](https://user-images.githubusercontent.com/24497588/36355573-36d75220-14b3-11e8-97a7-9ded3299ca49.png)

* #### LSY-201 JPEG Camera Module

![lsy-201 initialisation](https://user-images.githubusercontent.com/24497588/36355575-3aa82730-14b3-11e8-93bf-a688afc41a3a.png)

![lsy-201 picture taking process](https://user-images.githubusercontent.com/24497588/36355576-3daba056-14b3-11e8-9459-bea21a07c0cc.png)

<img width="516" alt="communication protocol" src="https://user-images.githubusercontent.com/24497588/36355577-412dd370-14b3-11e8-97fb-d3131a82b9e5.png">

#### Descripción Estructural

![rx structural](https://user-images.githubusercontent.com/24497588/36355589-7d342ca2-14b3-11e8-9924-e701ccb19739.png)

![tx structural](https://user-images.githubusercontent.com/24497588/36355590-7e09aa76-14b3-11e8-86a3-72c4ea375a7a.png)

#### Mapa de Memoria

<img width="223" alt="screen shot 2018-02-14 at 10 37 06" src="https://user-images.githubusercontent.com/24497588/36213006-7f1b2d4c-1173-11e8-876f-2cddc3c20777.png">

#### Diagrama de Caja Negra

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

## Módulo de comunicación inalámbrica por Bluetooth

![hc-06 picture](https://user-images.githubusercontent.com/24497588/36355417-d82ea266-14b0-11e8-8b5f-611d9828ebea.jpg)

* Referencia propuesta: HC-06 Bluetooth Module
* Protocolo de comunicación: UART
* Datasheet: www.electronicoscaldas.com/datasheet/HC-Serial-Bluetooth-Products-User-Instructional-Manual_Wavesen.pdf
* Precio: COP 15,000
* Enlace de compra: https://articulo.mercadolibre.com.co/MCO-453222494-modulo-bluetooth-hc-06-arduino-_JM

#### Diagrama de Caja Negra

![uart bb rev1](https://user-images.githubusercontent.com/24497588/36355493-14328448-14b2-11e8-9052-7f08852c1674.png)

#### Descripción Funcional

![tx flow](https://user-images.githubusercontent.com/24497588/36355572-2ec609aa-14b3-11e8-9d65-a4eca2a05919.png)

![rx flow](https://user-images.githubusercontent.com/24497588/36355573-36d75220-14b3-11e8-97a7-9ded3299ca49.png)

#### Descripción Estructural

![rx structural](https://user-images.githubusercontent.com/24497588/36355589-7d342ca2-14b3-11e8-9924-e701ccb19739.png)

![tx structural](https://user-images.githubusercontent.com/24497588/36355590-7e09aa76-14b3-11e8-86a3-72c4ea375a7a.png)

#### Mapa de Memoria

<img width="225" alt="screen shot 2018-02-14 at 10 35 45" src="https://user-images.githubusercontent.com/24497588/36213092-c96d3818-1173-11e8-8768-28a92ffa6458.png">

## Módulo de Memoria Externa: Tarjeta microSD (SPI)

![microsd picture](https://user-images.githubusercontent.com/24497588/36355377-4ed86f06-14b0-11e8-89cd-2130b61f5c06.jpg)
 
* Referencia propuesta: SanDisk Secure Digital Card
* Protocolo de comunicación: SPI
* Datasheet: www.convict.lu/pdf/ProdManualSDCardv1.9.pdf
* Precio (unidad): COP 31,900
* Enlace de compra: https://articulo.mercadolibre.com.co/MCO-455873213-memoria-micro-sd-adaptador-sandisk-16gb-class-10-80-mbps-_JM

#### Diagrama de Caja Negra

<img width="604" alt="external memory bb diagram" src="https://user-images.githubusercontent.com/24497588/36355386-74ae41a6-14b0-11e8-9da7-3256ca8fdc96.png">

#### Mapa de Memoria

<img width="225" alt="microsd memory map" src="https://user-images.githubusercontent.com/24497588/36355397-8beabb24-14b0-11e8-9ee3-c1df422d7af2.png">

## Plan de trabajo

<img width="388" alt="screen shot 2018-02-14 at 09 55 03" src="https://user-images.githubusercontent.com/24497588/36210762-48fe1b44-116d-11e8-9d69-b52aefed66e6.png">

## Referencias:
