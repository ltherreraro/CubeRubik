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
