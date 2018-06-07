# Laser-Cut Rubik's Cube Solving Robot

## Integrantes del equipo de trabajo:
* Óscar Julian Umaña B. (ojumanab@unal.edu.co).
* Juan Diego Ocampo M. (jdocampom@unal.edu.co).
* Raúl Felipe Morales R. (rafmoralesri@unal.edu.co).

## Especificaciones

* Reconocimiento de color y posición de cada pieza para determinar el estado inicial del cubo.
* Aplicación del algoritmo para resolver el cubo de manera que no sea necesario registrar el estado actual del mismo después de cada movimiento.
* Desarrollo del mecanismo que permite aplicar los algoritmos al cubo girando 90º una cara a la vez.

## 1) Módulo de Cámara
![lsy201 picture](https://user-images.githubusercontent.com/24497588/36355300-125b8d52-14af-11e8-905d-5bcbfc8026aa.jpg)
* Referencia: LinkSprite LS-Y201 Serial Port Camera Module
* Protocolo de comunicación: UART
* Datasheet: https://www.sparkfun.com/datasheets/Sensors/Imaging/1274419957.pdf 
* Precio: COP 120,000
* Enlace de compra: https://www.amazon.com/gp/product/B016PZIP3C

### Diagrama de Caja Negra 

_Cámara LS-Y201:_
![camera_fifo](https://user-images.githubusercontent.com/24497588/38167424-668b5b6c-34fa-11e8-9d1b-6ca6810e3e35.jpeg)

_Diagrama (Wishbone):_

![fifo_wb](https://user-images.githubusercontent.com/24497588/38204511-d72bd4a4-3668-11e8-9d24-5219edef2c93.jpeg)

_FIFO:_
![fifo](https://user-images.githubusercontent.com/24497588/38167425-669fcca0-34fa-11e8-8e62-26dce5439efc.jpeg)

_Mapa de memoria:_

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/04GRUPO4/Documentation/Camera/Mapa%20FIFO1.png)

### Descripción Funcional

_Camera Initialisation:_

![lsy-201 initialisation](https://user-images.githubusercontent.com/24497588/36355575-3aa82730-14b3-11e8-93bf-a688afc41a3a.png)

_Capture a JPEG Picture:_

![lsy-201 picture taking process](https://user-images.githubusercontent.com/24497588/36355576-3daba056-14b3-11e8-9459-bea21a07c0cc.png)

_Communication Protocol:_

![communication protocol](https://user-images.githubusercontent.com/24497588/38167385-f088b856-34f9-11e8-8d48-33e5fd97f587.jpg)

### Mapa de Memoria

<img width="375" alt="screenshot 2018-06-07 at 11 46 50" src="https://user-images.githubusercontent.com/24497588/41113922-925d591a-6a48-11e8-94b5-dccaebe67b14.png">

## 2) Módulo de Servomotores (PWM/GPIO)

<img width="259" alt="screenshot 2018-06-07 at 12 15 45" src="https://user-images.githubusercontent.com/24497588/41115319-c1612b3e-6a4c-11e8-97ab-3ea0186c84c5.png">

* Referencia: SG90
* Protocolo de comunicación: PWM
* Datasheet: http://www.mactronica.com.co/servomotor-micro-servo-sg90-trower-pro-12882802xJM
* Precio (unidad): COP 7,000
* Enlace de compra: http://www.mactronica.com.co/servomotor-micro-servo-sg90-trower-pro-12882802xJM

## 2.1) PWM

Es una técnica que consiste en variar el ancho de pulso de una señal cuadrada de tensión con el objetivo de controlar la cantidad de potencia administrada a los componentes o elementos electrónicos conectados. 

![pwm](https://user-images.githubusercontent.com/24497588/36634356-4c36d664-1971-11e8-9213-10e0203d5ebb.png)

### Diagrama de Caja Negra

![pwm](https://user-images.githubusercontent.com/24497588/38167427-66d6b648-34fa-11e8-9618-018032b4c44d.jpeg)

_Diagrama (Wishbone):_

![pwm_wb](https://user-images.githubusercontent.com/24497588/38167426-66b5700a-34fa-11e8-8b88-114bf9d94f08.jpeg)

### Mapa de Memoria

<img width="626" alt="pwm mm" src="https://github.com/ltherreraro/CubeRubik/blob/master/HW/04GRUPO4/Documentation/Servos/Mapa%20pwm.png">

## 3) Plan de trabajo

<img width="935" alt="workplan" src="https://user-images.githubusercontent.com/24497588/38167387-f09e6390-34f9-11e8-9270-6e664843d535.png">
