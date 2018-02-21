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

### UART

* #### Diagrama de Caja Negra

![uart bb rev1](https://user-images.githubusercontent.com/24497588/36355493-14328448-14b2-11e8-9052-7f08852c1674.png)

* #### Descripción Funcional

_UART Tx:_

![tx flow](https://user-images.githubusercontent.com/24497588/36355572-2ec609aa-14b3-11e8-9d65-a4eca2a05919.png)

_UART Rx:_

![rx flow](https://user-images.githubusercontent.com/24497588/36355573-36d75220-14b3-11e8-97a7-9ded3299ca49.png)

* #### Descripción Estructural

_UART Tx:_

![tx structural](https://user-images.githubusercontent.com/24497588/36355590-7e09aa76-14b3-11e8-86a3-72c4ea375a7a.png)

_UART Rx:_

![rx structural](https://user-images.githubusercontent.com/24497588/36355589-7d342ca2-14b3-11e8-9924-e701ccb19739.png)

### LSY-201 JPEG Camera Module

* #### Diagrama de Caja Negra
![ls-y201 black box](https://user-images.githubusercontent.com/24497588/36459493-f6fd54ee-1681-11e8-8716-6e743a2c79df.jpg)

* #### Descripción Funcional

_Camera Initialisation:_

![lsy-201 initialisation](https://user-images.githubusercontent.com/24497588/36355575-3aa82730-14b3-11e8-93bf-a688afc41a3a.png)

_Capture a JPEG Picture:_

![lsy-201 picture taking process](https://user-images.githubusercontent.com/24497588/36355576-3daba056-14b3-11e8-9459-bea21a07c0cc.png)

_Communication Protocol:_

![communication protocol](https://user-images.githubusercontent.com/24497588/36459078-24f3e8ce-1680-11e8-9ab2-d2290c35b15f.png)

* #### Mapa de Memoria

<img width="468" alt="lsy-201 uart memory map" src="https://user-images.githubusercontent.com/24497588/36459617-748c40dc-1682-11e8-9f60-ba5594217568.png">

## Módulo de Servomotores (GPIO)

![0002238_towerpro-mg996r-metal-gear-servo-motor](https://user-images.githubusercontent.com/24497588/36211943-a5ea9406-1170-11e8-99f3-9719c79c2da6.jpeg)

* Referencia propuesta: MG996R
* Protocolo de comunicación: GPIO
* Datasheet: www.electronicoscaldas.com/datasheet/MG996R_Tower-Pro.pdf
* Precio (unidad): COP 23,200
* Enlace de compra: https://www.ardobot.com/servomotor-mg996r-pi-oneria-metalica.html?___store=english&gclid=EAIaIQobChMI2L2Qytml2QIVEwaGCh2XgQbnEAQYASABEgJPOvD_BwE

* #### GPIO

Un GPIO es un pin genérico en un chip, cuyo comportamiento es controlable por el usuario en tiempo de ejecución. Estos pines GPIO no tienen ningún propósito especial definido, y no se utilizan de forma predeterminada. 

#### Diagrama de Caja Negra

* #### GPIO

<img width="523" alt="gpio bb diagram" src="https://user-images.githubusercontent.com/24497588/36355333-8bf055c6-14af-11e8-984e-75421aa79ba2.png">

* #### Mapa de Memoria

<img width="471" alt="gpio memory map" src="https://user-images.githubusercontent.com/24497588/36460471-86256cb6-1686-11e8-822c-3262ed8e0b9c.png">

## Módulo de comunicación inalámbrica por Bluetooth

![hc-06 picture](https://user-images.githubusercontent.com/24497588/36355417-d82ea266-14b0-11e8-8b5f-611d9828ebea.jpg)

* Referencia propuesta: HC-06 Bluetooth Module
* Protocolo de comunicación: UART
* Datasheet: www.electronicoscaldas.com/datasheet/HC-Serial-Bluetooth-Products-User-Instructional-Manual_Wavesen.pdf
* Precio: COP 15,000
* Enlace de compra: https://articulo.mercadolibre.com.co/MCO-453222494-modulo-bluetooth-hc-06-arduino-_JM

* #### Diagrama de Caja Negra

![uart bb rev1](https://user-images.githubusercontent.com/24497588/36355493-14328448-14b2-11e8-9052-7f08852c1674.png)

* #### Descripción Funcional

_UART Tx:_

![tx flow](https://user-images.githubusercontent.com/24497588/36355572-2ec609aa-14b3-11e8-9d65-a4eca2a05919.png)

_UART Rx:_

![rx flow](https://user-images.githubusercontent.com/24497588/36355573-36d75220-14b3-11e8-97a7-9ded3299ca49.png)

* #### Descripción Estructural

_UART Tx:_

![tx structural](https://user-images.githubusercontent.com/24497588/36355590-7e09aa76-14b3-11e8-86a3-72c4ea375a7a.png)

_UART Rx:_

![rx structural](https://user-images.githubusercontent.com/24497588/36355589-7d342ca2-14b3-11e8-9924-e701ccb19739.png)

#### Mapa de Memoria

<img width="469" alt="uart memory map" src="https://user-images.githubusercontent.com/24497588/36460470-84bf567a-1686-11e8-8673-ab715d459e97.png">

## Módulo de Memoria: SSD Interna Nexys4 (SPI)

* Referencia propuesta: -----
* Protocolo de comunicación: SPI
* Datasheet: -----

El protocolo SPI (Serial Peripheral Interface) es un estándar de comunicaciones, usado principalmente para la transferencia de información entre circuitos integrados en equipos electrónicos. Este protocolo es un estándar para controlar casi cualquier dispositivo electrónico digital que acepte comunicación sincrónica.

#### Diagrama de Caja Negra

_Protocolo SPI:_

![spi](https://user-images.githubusercontent.com/24497588/36358379-8ec4442a-14db-11e8-8161-4b1a95441e2c.png)

_SSD Interna Nexys4:_

![artix7ssd-spi black box](https://user-images.githubusercontent.com/24497588/36460811-2cf81466-1688-11e8-98d8-7b795eb11f6c.png)

#### Mapa de Memoria

<img width="469" alt="artix 7 internal ssd memory map" src="https://user-images.githubusercontent.com/24497588/36461037-8439f6c6-1689-11e8-9340-78e8ccb97526.png">

## Plan de trabajo

<img width="388" alt="screen shot 2018-02-14 at 09 55 03" src="https://user-images.githubusercontent.com/24497588/36210762-48fe1b44-116d-11e8-9d69-b52aefed66e6.png">

## Referencias:
