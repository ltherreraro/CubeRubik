# CUBO

## Integrantes del equipo de trabajo:

### 1 Lisseth Tatiana Herrera Rosero ltherrerar@unal.edu.co

### 2 Daniel Antonio Clavijo Sierra daclavijos@unal.edu.co

### 3 Daniel Alejandro Barreiro Herrera dabarreiroh@unal.edu.co
## Funcion general del sistema:
- Por medio de la cámara OV2640 se tomara las 6 caras del cubo rubik, con estas imágenes se determinara el color y ubicación de cada una de las piezas del cubo.

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/cubeclean.gif)

- Esta información se grabaría en una memoria SD.

- La información se enviará por medio de WIFI (MRF24WG0MA-MB) a un computador.

- La información llegará a un computador y se ingresará a el programa Cube explorer 5.13, este programa arrojará un algoritmo (archivo de texto) para resolver el cubo. Se enviaría esta información de regreso a al sistema.


- La información con los movimientos se guardaran en la memoria SD, es decir se almacenará alrededor de 480 bits.

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/Memoria.PNG)

- Finalmente esta información se enviara a los servo motores que realizarán los movimientos correspondientes.


 
## Descripción de la caja Funcional  (in/out)

SERVOMOTOR AR-3606HB
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/servo.png)

CAMARA MOSFET OV2640
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/camara.png)


WIFI: MRF24WG0MA/MB

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/Bloques%20Wifi%20Interno.JPG)

Micro SD

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/Bloqmemory.png)
## Mapa de memoria:
WIFI: MRF24WG0MA/MB
##
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/MapaMemoria%20WIFI.JPG)

Micro SD

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/mapamemoria.PNG)

Servo Motores

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/memoriaServo.PNG)

Cámara
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/mapa%20de%20memoria%20camara.JPG)


## Diagramas de bloques
PWM

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/bloqueservos.jpg)

Cámara

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/diagrama%20bloques%20camara%20fifo.png)

SD

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/bloquesd.JPG)
## Wishbones:
PWM
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/wishbone%20de%20motores.jpg)
Cámara
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/wishbone%20de%20camara.jpg)



## Cronograma De Trabajo
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/01GRUPO1/03document/cronograma.JPG)
