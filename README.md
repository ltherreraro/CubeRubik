# CubeRubik

Repositorio sobre sistemas autonomos para resolver el cubo rubik en el menor tiempo posible

### MEMORIA SD
 Esta memoria se empleará para el almacenamiento de las imágenes tomadas por la cámara como informacion necesaria para conocer la posicion inicial de los colores en el cubo y poder procedes a su solución.

La comunicación de la micro SD esta basada en la interfaz de 8 pines(reloj, línea de comandos/ Master Out Slave In (MOSI), líneas 4xData / Master In Slave Out (MISO) y 3xPower). El protocolo SPI (Serial Peripheral Interface) es el protocolo de comunicación que admite la tarjeta para la inicialización. El funcionamiento del sistema se basa en 5 módulos: módulo de inicialización de tarjetas (CINM), módulo de lectura de tarjetas (CRM), módulo inactivo (IM),  módulo de escritura de tarjetas (CWM) y módulo de decisión (DM). Junto a los módulos hay una CU (unidad de control) que supervisar y controlar las actividades de cada módulo. Una microSD responde a una serie de comandos de 48 bits, para un almacenamiento dado de un solo bloque o multi-bloques, un solo bloque de almacenamiento posee un ancho de 512 bytes. 

_CAJA (IN/OUT) Driver micro SD_

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/driver%20SD.png)

_CAJA FUNCIONAL (IN/OUT) micro SD_

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/Diagrama%20funcional%20MICRO%20SD.png)


**_PROTOCOLO SPI_**

El protocolo SPI se compone de un bus de cuatro lineas las cuales son:

-Reloj (CLK).
-Master-Out, Slave-In (MOSI).
-Master-In, Slave-Out (MISO).
-Chip Select (CS).

La linea de reloj CLK es generada por el dispositivo maestro para sincronizar el intercambio de datos. La linea marcada como MOSI es la linea por medio de la cual el dipositivo maestro le envia datos al esclavo. La linea marcada como MISO permite el envio de datos desde el esclavo hacia el maestro. CS suspende o permite la comunicación entre el Maestro y el Esclavo.  

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/estructura%20general%20del%20protocolo%20spi.png)

Existen cuatro modos en el cual se puede enviar información dependiendo de dos párametros basados en la señal de reloj. El primer de ellos es la polaridad y el segundo es la fase.


* Modo 0: CPOL = 0 y CPHA = 0. Modo en el cual el estado del reloj permanece en estado lógico bajo y la información se       envía en cada transición de bajo a alto, es decir alto activo.

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/spi%20modo%200.png)    

* Modo 1: CPOL = 0 y CPHA = 1. Modo en el cual el estado del reloj permanece en estado lógico bajo y la información se envía en cada transición de alto a bajo, es decir bajo activo.
    
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/spi%20modo%201.png)

* Modo 2: CPOL = 1 y CPHA = 0. Modo en el cual el estado del reloj permanece en estado lógico alto y la información se envía en cada transición de bajo a alto, es decir alto activo.
    
![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/spi%20modo%202.png)

* Modo 3: CPOL = 1 y CPHA = 1. Modo en el cual el estado del reloj permanece en estado lógico alto y la información se envía en cada transición de alto a bajo, es decir bajo activo.

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/spi%20modo%203.png)

La mayoría de los dispositivos SPI pueden soportar al menos 2 modos de los 4 antes mencionados.

La manera en la cual estos dispositivos se conectan pueden ser de dos tipos: encadenado o paralelo. El de tipo encadenado las entrada del mosi de cada esclavo va conectada con el mosi del master para el primer caso o de su esclavo anterior para el resto. Además, se utiliza un único de selección de esclavo proveniente del maestro en forma paralela hacia cada esclavo.

Por otro lado, en el tipo paralelo se utiliza un único mosi proviente del maestro en forma paralela hacia cada esclavo. Además, se adiciona una línea de selección de esclavo proveniente del maestro por cada esclavo que exista en el sistema.

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/spi%20tipo%20encadenado%20y%20paralelo.png)


### MODULO BLUETOOTH HC - 05

Se empleara para intercambiar información entre el modulo bluetooth y la FPGA utilizando el protocolo de comunicación UART (Universal Asynchronous Receiver-Transmitter, en español: Transmisor-Receptor Asíncrono Universal, se encarga de controlar los puertos y dispositivos serie)

El HC-05 ofrece una mejora frente a su hermano el HC-06 en precio y características, ya que es un módulo Maestro-Esclavo, esto quiere decir, que además de recibir conexiones desde una PC o tablet, también es capaz de generar conexiones hacia otros dispositivos bluetooth. Gracias a sus puertos TxD y RxD nos permite realizar comunicaciones inalámbrica a una distancia de 10 mts máximo. 

EL Modulo HC-05 tiene dos estados:
   
Modo AT (Desconectado):
- Entra a este modo tan pronto alimentas el modulo, y cuando no se ha establecido una conexión bluetooth con ningún otro dispositivo
- EL LED del módulo está parpadeando (frecuencia de parpadeo del LED es de 102ms)
- En este modo es cuando se debe enviar los comandos AT en caso se quiera configurar, si se envían otros datos diferente a los comandos AT el HC-05 los ignorará.
  
Modo Conectado:
- Entra a este modo cunado se establece una conexión con otro dispositivo bluetooth.
- El LED permanece prendido sin parpadear
- Todos los datos que se ingresen al HC-05 por el Pin RX se trasmiten por bluetooth al dispositivo conectado, y los datos recibidos se devuelven por el pin TX. La comunicación es transparente
- En este Modo el HC-05 no puede interpretar los comandos AT

_MODO DE TRANSMISION BT_

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/bluetooth%201.png)

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/bluetooth%202.png)

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/Bluetooth%20HC-05.png)

Características:

    -Especificación bluetooth v2.0 + EDR (Enhanced Data Rate)
    -Puede configurarse como maestro, esclavo, y esclavo con autoconexión (Loopback) mediante comandos AT
    -Chip de radio: CSR BC417143
    -Frecuencia: 2.4 GHz, banda ISM
    -Modulación: GFSK (Gaussian Frequency Shift Keying)
    -Antena de PCB incorporada
    -Potencia de emisión: ≤ 4 dBm, Clase 2
    -Alcance 5 m a 10 m
    -Sensibilidad: ≤ -84 dBm a 0.1% BER
    -Velocidad: Asincrónica: 2.1 Mbps (max.)/160 kbps, sincrónica: 1 Mbps/1 Mbps
    -Seguridad: Autenticación y encriptación (Password por defecto: 1234)
    -Perfiles: Puerto serial Bluetooth
    -Módulo montado en tarjeta con regulador de voltaje y 6 pines suministrando acceso a VCC, GND, TXD, RXD, KEY y status LED (STATE)
    -Consumo de corriente: 50 mA
    -El pin RX del módulo requiere resistencia de pull-up a 3.3 V (4.7 k a 10 k). Si el microcontrolador no tiene resistencia de pull-up interna en el pin Tx se debe poner externamente.
    -Niveles lógicos: 3.3 V. Conectarlos a señales con voltajes mayores, como por ej. 5 V, puede dañar el módulo
    -Voltaje de alimentación: 3.6 V a 6 V
    -Dimensiones totales: 1.7 cm x 4 cm aprox.
    -Temperatura de operación: -20 ºC a +75 ºC



_CAJA FUNCIONAL (IN/OUT) BT_

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/bluetooth%203.png)

### GPIO (General Purpose Input/Output)

Es, como su propio nombre indica, un sistema de E/S (Entrada/Salida) de propósito general, es decir, una serie de conexiones que se pueden usar como entradas o salidas para usos múltiples. Los GPIO representan la interfaz entre los dispositivos y el mundo exterior.

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/gpio.png)

### UART (Universal Asynchronous Receiver-Transmitter)

Es el dispositivo que controla los puertos y dispositivos serie. El UART toma bytes de datos y transmite los bits individuales de forma secuencial. En el destino, un segundo UART reensambla los bits en bytes completos. Se utiliza un UART para convertir la información transmitida entre su forma secuencial y paralela en cada terminal de enlace. Cada UART contiene un registro de desplazamiento que es el método fundamental de conversión entre las forma secuencial y paralela.


## MAPAS DE MEMORIA

A continuación se presentarán los mapas de memoria para los periféricos mostrados previamente:

Memoria SD

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/mapa%20sd.png)

Bluetooth

![](https://github.com/ltherreraro/CubeRubik/blob/master/HW/03GRUPO3/03document/mapa%20bt.png)
