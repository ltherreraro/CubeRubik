# 
`
`python example.py`

En la Terminal aparecerá el mensaje `“​Esperando Bot...”`​ Es necesario presionar el botón CPU_RESET de la tarjeta Nexys4DDR hasta que aparezca `“​Initialising...”​`

4) a valor(3 a 46).`
* `ver cubo`: ​Toma la foto de cada cara del cubo para
### Mapa de Memoria

<img width="375" alt="screenshot 2018-06-07 at 22 44 21" src="https://user-images.githubusercontent.com/24497588/41138061-6b42eafa-6aa4-11e8-8aec-4e1585b22745.png">

Los servos SG90 trabajan con un periodo de la señal de 20 ms, y la posición del brazo se indica con su ciclo útil. 

Se usaron 8 servos, para los cuales se puede asignar el valor de su ciclo útil, así como su periodo en caso de querer trabajar con un servo que maneje un periodo diferente de trabajo. Se escoge el servo que se quiere trabajar en valores que van del 0 al 7.

#### 2.1.2) Brazos

Se implementó unos brazos los cuales se basan en el uso de dos servos para mover el brazo hacia adelante, atrás, y rotar una cara del cubo hacia la izquierda o derecha, para que llevara a cabo una instrucción sin que se colisionara con otro brazo se emplea un tiempo de 1 ms entre instrucción excepto en el caso de requerir cambiar la cara del cubo en dicho caso no había tiempo de retardo para que se ejecutarán las instrucciones al tiempo. Se implementan cuatro brazos.

### 2.2 Módulo de Cámara:

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

![whatsapp image 2018-06-08 at 00 36 00](https://user-images.githubusercontent.com/24497588/41156885-5c523b0a-6ae9-11e8-8139-8ad58dbe0cf0.jpeg)

_Mapa de memoria:_

<img width="704" alt="screenshot 2018-06-07 at 22 52 52" src="https://user-images.githubusercontent.com/24497588/41138255-99e01f80-6aa5-11e8-8160-65969fb07546.png">

### Descripción Funcional

_Camera Initialisation:_

![lsy-201 initialisation](https://user-images.githubusercontent.com/24497588/36355575-3aa82730-14b3-11e8-93bf-a688afc41a3a.png)

_Capture a JPEG Picture:_

![lsy-201 picture taking process](https://user-images.githubusercontent.com/24497588/36355576-3daba056-14b3-11e8-9459-bea21a07c0cc.png)

_Communication Protocol:_

![communication protocol](https://user-images.githubusercontent.com/24497588/38167385-f088b856-34f9-11e8-8d48-33e5fd97f587.jpg)

### Mapa de Memoria

<img width="700" alt="screenshot 2018-06-07 at 22 55 02" src="https://user-images.githubusercontent.com/24497588/41138286-ebb771be-6aa5-11e8-9801-bca63064c7eb.png">

Se emplea por defecto la cámara con un BAUD rate de 38400, envía la foto con un tamaño de 320X240 pixels. Se utilizan las siguientes funciones para controlar la cámara, las cuales envían por UART los comandos y luego leen y comparan el retorno de la cámara para confirmar que se envió correctamente.

* ​`reset()`: ​Resetea la cámara, la cual queda lista para tomar una nueva foto.

* `takepicture()`:​ ​Toma la foto.

* `getsize()`:​ ​Recibe la longitud del archivo JPEG.

* `sendpicture()`: ​Envía la foto por medio del UART y se procesa en un computador, por medio de Python.

* `stoptaking()`: ​Después de recibir el archivo JPEG envía el comando para dejar de tomar la foto.

#### 2.2.1) Mapeo

El mapeo del cubo se hace por medio de la clase ​face​, para el algoritmo que se se usa es necesario definir las caras del cubo, se empieza por la cara que tiene el cuadrado central blanco hacia el frente y la cara que tiene el cuadrado rojo hacia arriba, se definen las siguientes funciones:

* `Face()`:​ Permite mover el cubo hacia una cara determinada por el usuario.

* `facepictureinit()`: ​Ubica los brazos de manera que se despeje la cara de arriba del cubo para tomar la foto sin que las manos afecten los datos.

* `facepictureend()`: ​Ubica los brazos a la posición de ​init().

* `R1()-L1()-R11()-L11()`: ​Ejecutan los movimientos para cambiar la cara del cubo.

## 3. Hardware:

La implementación del pwm en verilog se hizo con dos modulos: counter.v y pwm.v

El módulo counter.v es el que se encarga de la generación de un pwm. Este se instancia 8 veces en pwm.v para así tener 8 señales independientes.

_counter.v_

Este módulo tiene las siguientes entradas y salidas:

 `module counter(clk,period,duty,state,en);` 
	
	`input clk;`

	`input en;`

	`input [7:0] period;`

	`input [7:0] duty;`

	`output reg state;`
 
Donde: 

* `clk` es la entrada de del reloj que se esté usando.
* `en` es la que habilita el funcionamiento de la salida de la salida state.
* `period` es el periodo al que se desea trabajar el pwm.
* `duty` es el ciclo útil al que se desea trabajar el pwm.
* `state` es la salida del pwm, las cual solo cambia al estar habilitada la entrada `en`.

En este módulo lo que se hace es contar los ciclos de reloj que son necesarios para 1us. Para luego implementarlo en la lógica del mismo. Teniendo los valores de periodo y ciclo útil, lo que se hace es poner en alto la salida state durante el tiempo del ciclo útil y mantenerlo abajo en lo que sería el periodo menos el ciclo útil.

_pwm.v_

Este módulo cumple la función de instanciar 8 modulos counter y de actuar como multiplexor para los valores de cada uno de estos módulos. Con este se puede ingresar los valores para las características de cada uno de los PWM, además de leer los valores actuales de las mismas. Este módulo tiene las siguientes entradas y salidas:

`module pwm(clk,rst,rd,wr,din,adrs,dout,pwmo);`
	
	`input clk;`

	`input rst;`

	`input rd;`

	`input wr;`

	`input [7:0] din;`

	`input [6:0] adrs;`

	`output reg [7:0] dout;`

	`output [7:0] pwmo;`

Donde:
* `clk` es la entrada de reloj.
* `rst` es la entrada para poner en cero todos los valores de los pwm.
* `rd` es la entrada con la que indicamos si queremos leer los valores de las señales.
* `wr` es la entrada con la que indicamos si queremos escribir los valores de las señales.
* `din` es el valor que queremos ingresar a la característica seleccionada con `adrs`.
Para la implementación en software del PWM se crearon 3 clases en C++. Estas son: face, que hereda de arm, arm que hereda de pwm y pw

