# CUBO

## Integrantes del equipo de trabajo:

### 1 Julian Andres Ferro Casas jaferroc@unal.edu.co

### 2 David Felipe Nieto dfnietoa@unal.edu.co


## Descripción general del sistema: (tomado del documento de clase).

### Descripción de una microSD.
La comunicación de la micro SD se basa en la interfaz de 8 pines(reloj, línea de comandos/ Master Out Slave In (MOSI), líneas 4xData / Master In Slave Out (MISO) y 3xPower). El protocolo de comunicación que admite la tarjeta para la inicialización es el protocolo SPI (Serial Peripheral Interface). El funcionamiento del sistema se basa en 5 módulos diferentes: módulo de inicialización de tarjetas (CINM), módulo inactivo (IM), módulo de lectura de tarjetas (CRM), módulo de escritura de tarjetas (CWM) y módulo de decisión (DM). Junto a los módulos hay una CU (unidad de control) para supervisar y controlar las actividades de cada módulo.
Una microSD responde a una serie de comandos de 48 bits, para un almacenamiento dado de a un solo bloque o multi-bloques, un solo bloque de almacenamiento posee un ancho de 512 bytes.
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/datos.png)

### Descripción del protocolo SPI.
El protocolo SPI es un protocolo de comunicaciones entre circuitos digitales, de tipo síncrono, full-dúplex. Este protocolo cuenta con 4 conexiones, una señal de reloj generada por el maestro sclk, una conexión maestro hacia esclavo, master-out-slave-in MOSI, una conexión desde el esclavo hacia el maestro master-in-slave-out MISO, y un chip select CS que permite seleccionar diferentes dispositivos bajo el mismo protocolo.
El envió de datos empieza enviando el bit más significativo y en la recepción de datos el primer bit enviado es el menos significativo.
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/modos.png)

### Bluetooth y el protocolo UART
El modulo BlueTooth HC-06 utiliza el protocolo UART RS 232 serial. Permite una variedad de baudios tales como: 1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200.
El protocolo UART es un protocolo duplex serial, este protocolo es asíncrono, el esclavo y el maestro no tienen la misma frecuencia de reloj, la tasa de bits enviada se mide en baudios, cantidad que debe ser la misma en esclavo y maestro.

### GPIO y PWM


## Componentes
### SD versión 2.0 no HC.
### Bluetooth HC06.
### GPIO.
### Camara OV7670.

## Descripción de la caja Funcional  (in/out) SD
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/bloquespi.png)
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/estructural.png)
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/funcional.png)
## Descripción de la caja Funcional  (in/out) Bluetooth
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/bloquesuart.png)
## Descripción de la caja Funcional  (in/out) Camara
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/bloques_OV7670.png)
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/camaran.png)
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/camara1.png)

## Descripción de la caja Funcional  (in/out) PWM
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/PWM.png)
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/Diagrama_PWM.png)


![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/periferico.png)

## Arquitectura del periférico:

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/02GRUPO2/03document/mapa.png)

## referencias:

