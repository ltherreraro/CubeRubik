# RubikBot - 3D Printed Rubik's Cube Solving Robot
#### Universidad Nacional de Colombia, Facultad de Ingeniería, Departamento de Ingeniería Eléctrica Y Electrónica. 

#### Electrónica Digital II

Elaborado por:
* Óscar Julian Umaña B. (ojumanab@unal.edu.co).
* Juan Diego Ocampo M. (jdocampom@unal.edu.co).
* Raúl Felipe Morales R. (​rafmoralesri@unal.edu.co​).

## 1. Manual del Usuario

El RubikBot está diseñando e implementado en el procesador Lattice Mico 32, que se ejecuta en una tarjeta de desarrollo Nexys4DDR, la cual cuenta con una FPGA Artix 7 de Xilinx.

Está conformado por una estructura impresa en 3D con 4 brazos, de los cuales cada uno tiene dos servomotores incorporados en él, uno de ellos se encarga de girar la “mano” en el extremo del brazo (que es utilizada para sujetar el cubo) hacia los lados, mientras que el otro tiene como función mover el brazo hacia atrás o hacia adelante, según sea necesario.

Para determinar el estado inicial de cada una de las seis caras del cubo se tiene una cámara ubicada unos 10 cm sobre el cubo hacia el centro, la cual se encarga de tomar fotografías de cada una de las caras y enviarlas al computador, el cual, mediante un código en Python realizará el procesamiento de imágen necesario para reconocer el color y posición de cada pieza del cubo en cada cara para así determinar su estado inicial.

Posteriormente, el programa determina un algoritmo para solucionar el cubo y mediante un comando en Terminal se envía la orden de resolver el cubo.

### 1.1 Requisitos del Sistema:

* Tener instalado el software ​Xilinx ISE DS 14.7.
* Instalar los Toolchains del procesador LM32. Para más información ir al
siguiente enlace: _https://github.com/Fabeltranm/lm32_soc_HDL/wiki/Instalación--y-configuración-del-Toolchain-para-el-procesador-LM32_
* Instalar iVerilog y GTKWave.
* Tener instalado Python 2.7 o superior.
* Instalar los siguientes paquetes y librerías de Python: CV2, PyCuber, PIL, PySerial, PIP, Numpy, Struct, Time, SYS, OS y IPython.
* Tener instalados los drivers Adept y Runtime de Digilent para la tarjeta Nexys4DDR.
* Descargar el código fuente del programa desde el siguiente enlace: _https://github.com/ltherreraro/CubeRubik/tree/master/HW/04GRUPO4/Source%20Code_

### 1.2 Procedimiento:

En primer lugar, se debe conectar cada uno de los servos a la PCB en su respectivo espacio (desde el SERVO_0 hasta el SERVO_7).

Conectar los cables de la señal de los servos desde la PCB a la tarjeta Nexys4DDR de la siguiente forma:

`PCB RubikBot v2.0 SERVOS -----> Nexys4DDR PMOD JXADC`

` SERVOS S0 -----> Pmod JXADC_1`

` SERVOS S1 -----> Pmod JXADC_7`

` SERVOS S2 -----> Pmod JXADC_2`

` SERVOS S3 -----> Pmod JXADC_8`

` SERVOS S4 -----> Pmod JXADC_3`

` SERVOS S5 -----> Pmod JXADC_9`

` SERVOS S6 -----> Pmod JXADC_4`

` SERVOS S7 -----> Pmod JXADC_10`

` GND -----> Pmod JXADC_5 o Pmod JXADC_7`

<img width="299" alt="screenshot 2018-06-08 at 06 51 34" src="https://user-images.githubusercontent.com/24497588/41156668-84550f20-6ae8-11e8-9544-8c71a575056d.png">

Ahora, conectar la cámara correctamente:

` VCC -----> VCC (CAMERA_IN PCB)`

` GND -----> GND (CAMERA_IN PCB)`

` TX  -----> TX (CAMERA_IN PCB)`

` RX -----> RX (CAMERA_IN PCB)`

` TX (CAMERA_OUT PCB) -----> Pmod JD_1`

` RX (CAMERA_OUT PCB) -----> Pmod JD_2`

<img width="277" alt="screenshot 2018-06-08 at 06 51 47" src="https://user-images.githubusercontent.com/24497588/41156669-847134d4-6ae8-11e8-9174-45d0e43514b4.png">

Ahora, es indispensable programar la FPGA con el procesador LM32 que se ha descargado. Para ello, se abrirá una Terminal en la carpeta del proyecto RubikBot mediante el siguiente comando:

`cd ~/<DestinationFolder>/RubikBot/lm32-rubikbot-master/`

Reemplazar `<DestinationFolder>` por la carpeta en la que está guardado el código del proyecto. Ej: ​`cd ​~/Downloads/RubikBot/lm32-rubikbot-master/`. Finalmente:

`djtgcfg enum`

`djtgcfg init -d Nexys4DDR`

`djtgcfg prog -d Nexys4DDR -i 0 -f system.bit`

Ahora, en otra Terminal se debe acceder a la carpeta del código en Python (UJLM).

` cd ~/<DestinationFolder>/RubikBot/UJLM-master/`

Para ejecutar el código se escribe el siguiente comando:-

`python example.py`

En la Terminal aparecerá el mensaje `“​Esperando Bot...”`​ Es necesario presionar el botón CPU_RESET de la tarjeta Nexys4DDR hasta que aparezca `“​Initialising...”​`

Posteriormente se selecciona alguna de las siguientes funciones del código en Python, según lo que se desee hacer:

* `init`: ​Lleva los brazos hacia adelante para agarrar el cubo.
* `home`:​ Lleva los brazos hacia atrás.
* `mover`: ​Como se indica en la figura dependiendo la cara que se quiera mover se escribe en la consola la dirección del movimiento. Ejemplo: ​mover Ra​, mueve la cara “R” hacia la derecha y ​mover R’ mueve la cara “R” hacia la izquierda.

<img width="292" alt="screenshot 2018-06-07 at 22 38 44" src="https://user-images.githubusercontent.com/24497588/41137923-a26da5a2-6aa3-11e8-8410-b9296c141435.png">

* `calibra`: Permite realizar ajustes en el ciclo útil de los servos, lo cual permite realizar una calibración en caso de ser necesario la sintaxis es: `calibrar dir (derecha, izquierda...) del brazo #(1,2,3,4) a valor(3 a 46).`
* `ver cubo`: ​Toma la foto de cada cara del cubo para determinar el estado inicial del cubo.
* `crear algoritmo`:​ Genera el algoritmo para solucionar el cubo(depués de haber ejecutado "ver cubo"). 
* `resolver cubo`: ​Ejecuta el algoritmo generado(después de haber ejecutado "crear algoritmo").

## 2. Especificaciones Técnicas

### 2.1 Módulo de Servomotores:

<img width="259" alt="screenshot 2018-06-07 at 12 15 45" src="https://user-images.githubusercontent.com/24497588/41115319-c1612b3e-6a4c-11e8-97ab-3ea0186c84c5.png">

* Referencia: SG90
* Protocolo de comunicación: PWM
* Datasheet: http://www.mactronica.com.co/servomotor-micro-servo-sg90-trower-pro-12882802xJM
* Precio (unidad): COP 7,000
* Enlace de compra: http://www.mactronica.com.co/servomotor-micro-servo-sg90-trower-pro-12882802xJM

#### 2.1.1) PWM

La técnica Pulse Width Modulation consiste en variar el ancho de pulso de una señal cuadrada de tensión con el objetivo de controlar la cantidad de potencia administrada a los componentes o elementos electrónicos conectados.

![pwm](https://user-images.githubusercontent.com/24497588/36634356-4c36d664-1971-11e8-9213-10e0203d5ebb.png)

### Diagrama de Caja Negra

![pwm](https://user-images.githubusercontent.com/24497588/38167427-66d6b648-34fa-11e8-9618-018032b4c44d.jpeg)

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
* `adrs` es la entrada con la que se indica la característica y el PWM a modificar o leer según wr o rd. La siguiente tabla indica los valores para cada característica.
* `dout` es la salida por la cual obtenemos el valor que queremos leer al habilitar `wr`.
* `pwmo` es la salida de los PWM siendo pwm[0] la primera señal y pwm[7] la última.

<img width="300" alt="screenshot 2018-06-08 at 06 37 40" src="https://user-images.githubusercontent.com/24497588/41156217-8ceeaad0-6ae6-11e8-9423-2e82f13b691a.png">

En este se sigue la lógica de un multiplexor. Según las entradas wr y rd se lee o se escribe la característica que se desea. Además para poder leer y escribir dichos valores se almacenan en registros todo lo ingresado, para así leerlos cuando se necesite.

_FIFO_

Este módulo cumple la función de tener una pila de datos en el cual el primer dato en escribirse es el primer dato en leerse, la longitud y el tamaño se pueden definir como parámetro, lo que nosotros utilizamos para el archivo JPEG fué de  longitud de 8 bits y un  tamaño de pila de 128.

El módulo tiene los siguientes parámetros, entradas y salidas:

`parameter DATO_WIDTH;`

`parameter FIFO_LENGTH;`

`module (wclk, datin, rclk, rst, dataout, full, empty, dato);`

`	input wclk;`

`	input rclk;`

`	input rst;`

`	input [DATO_WIDTH-1:0] datin;`

`	output reg full;`

`	output reg empty;`

`	output reg dato;`

` 	output reg [DATO_WIDTH-1:0] datout;`

Donde:
* `wclk`: Es el reloj de escritura, se activa cuando se desea escribir un dato en la pila de datos.
* `rclk`: Es el reloj de lectura, se activa cuando se desea leer un dato de la pila de datos.
* `rst`: Permite reiniciar la FIFO, todos los registros de salida se vuelven 0 excepto por empty que se pone en 1.
* `datin`: El dato de entrada que se escribe en la pila.
* `full`: Su valor es 0, cuando la pila está llena su valor es 1 y no permite escribir más en la pila.
* `empty`: Su valor es 1 cuando la pila no tiene datos, 0 cuando existe al menos un dato en la pila.
* `dato`: Su valor es 1 si existe al menos un valor en la pila, indica si hay datos en la pila.
* `datout`: El dato de salida que se lee de la pila.

<img width="410" alt="screenshot 2018-06-08 at 07 47 22" src="https://user-images.githubusercontent.com/24497588/41158920-498dcb90-6af0-11e8-8541-9237e1f06b57.png">

_Wishbone_

Para el wishbone del PWM se utilizó la misma lógica que maneja el módulo UART con el que ya cuenta el LM32. Como pwm.v cuenta con lectura y escritura, según el procesador nos pida(wb_rd) o de(wb_wr) información habilitamos estas entradas wr y rd. Para la caracteristica a modificar utilizamos wb_adr_i en adrs. Y por último si es lectura o escritura, damos el valor de dout a wb_dat_o, o a din el valor de wb_dat_i.

![pwm_wb](https://user-images.githubusercontent.com/24497588/38167426-66b5700a-34fa-11e8-8b88-114bf9d94f08.jpeg)

Puesto que recibe dos señales de reloj, una para la escritura y otra para la lectura, se puede tanto escribir como leer simultáneamente. 

## 4. Software

Para la implementación en software del PWM se crearon 3 clases en C++. Estas son: face, que hereda de arm, arm que hereda de pwm y pwm. 

_pwm_

En esta clase es donde se crean los registros que va a utilizar el wishbone del PWM, como en0, period0, duty0, en1, period1… El mapa de memoria completo se muestra en la siguiente tabla. Donde se tienen todos los registros como solo lectura, ya que no se llegó a implementar por completo la lectura de estos.

<img width="230" alt="screenshot 2018-06-08 at 06 40 59" src="https://user-images.githubusercontent.com/24497588/41156319-04054c14-6ae7-11e8-8d86-c07d5d9068f6.png">

Esta clase cuenta con cuatro funciones implementadas:

* `pause()`: es un derivado del módulo timer, la cual crea una espera de 1 segundo.
* `pwm_en(int sel,uint32_t val)`: asigna un valor(val) al habilitador de la señal(sel) de PWM.
* `pwm_period(int sel,uint32_t val)`: asigna un valor(val) al periodo de la señal(sel) de PWM.
* `pwm_duty(int sel,uint32_t val)`: asigna un valor(val) al ciclo útil de la señal(sel) de PWM.

_arm_

Esta clase hereda de la clase pwm. Esta se encarga de generar movimientos completos para los brazos. Como lo puede ser girar la “mano” a la derecha, desplazarla hacia atrás, poner la mano en medio y desplazarla de nuevo hacia adelante, o un simple movimiento de brazo a la derecha. Además de contar con una función para calibrar cada uno de estos movimientos.

* `init():` ​Lleva los servos de a la posición inicial de agarre del cubo, es decir envía todos los brazos hacia atrás uno por uno, a continuación las manos se ubican en la posición central, y luego los envía hacia adelante uno por uno.

* `home()​:`​ Lleva todos los servos hacia atrás uno por uno.

* `derecha():` ​Rota la mano hacia la derecha lleva el brazo hacia atrás, luego rota la mano a la posición central y termina llevando el brazo hacia adelante.

* `izquierda()​:` Rota la mano hacia la izquierda lleva el brazo hacia atrás, luego rota la mano a la posición central y termina llevando el brazo hacia adelante.

* `derecha0():` ​Rota la mano hacia la derecha. Se usa para cambiar el cubo de cara ya que no emplea un tiempo de retardo y se puede utilizar simultáneamente con otra función.

* `izquierda0()`:Rota la mano hacia la izquierda. Útil para cambiar la cara del cubo.

* `medio0()`​:Ubica la mano en la posición central. Útil para cambiar la cara del cubo.

* `atras0()`:​ Lleva el brazo hacia atrás. Útil para cambiar la cara del cubo.

* `adelante0()`: ​Lleva el brazo hacia adelante. Útil para cambiar la cara del cubo.

* `adelante01()`: ​Lleva el brazo hacia adelante. Se usa para variar la fuerza con la que sostiene el cubo cuando lo rota para evitar que este se deslice y se caiga.

* `set_serv()`:​ Se establece el conjunto de servos que componen cada brazo.

* `calib()`: Permite cambiar el ciclo útil de la señal de los servos, para calibrar los movimientos del brazo. Se maneja las siguientes direcciones:

<img width="263" alt="screenshot 2018-06-07 at 22 50 03" src="https://user-images.githubusercontent.com/24497588/41138200-3909af14-6aa5-11e8-82fa-29183e14945b.png">

_face_

Esta clase que hereda de la clase arm, cumple con la función de generar movimientos útiles con los 4 brazos para el reconocimiento de los colores o la resolución del cubo. Como girarlo con respecto al eje Y, X o Z.

`Face1(arm a, arm b, arm c, arm d, uint32_t x)`

* `Face1():` Este pone el cubo en la posición correcta para tomar las fotos. Va por paso que se ingresan en x, siendo el paso 1 la posición inicial(no hace nada) y el 7 el último paso.

## 5. Plan de trabajo

<img width="935" alt="workplan" src="https://user-images.githubusercontent.com/24497588/38167387-f09e6390-34f9-11e8-9270-6e664843d535.png">
