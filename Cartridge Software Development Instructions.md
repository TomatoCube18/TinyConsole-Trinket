**Cartridge Software Development Instructions**

~ CH32V003 Development ~
Cartridge Peripheral PinMapping:

- I2C (OLED & RTC)
  - **PC1** - SDA
  - **PC2** - SCL

- GPIO (Button & Speaker)
  - **PC3** - Up Button
  - **PC6** - Down Button
  - **PC4** - Left Button
  - **PC7** - Right Button
  - **PA2** - FireA Button 
  - **PC0** - FireB Button
  - **PA1** - OnBoard Speaker


(1) For C Development of the CH32V003 Platform, please follow the instructions found in the [ch32v003fun](https://github.com/cnlohr/ch32v003fun) repository. 

(2) As for Arduino users, the above library has been wrapped under a proper Arduino Board file,  please follow the instructions found in the [arduino-wch32v003](https://github.com/AlexanderMandera/arduino-wch32v003)

(3) For users who wish to test out [TinyJoyPad games](https://www.tinyjoypad.com) with the TinyConsole, we have included a modified port of Waginator's CH32V003-GameConsole [repository](https://github.com/wagiminator/CH32V003-GameConsole). It has been modified to fix problems compiling under the MacOS environment & Programmer is changed to a "minichlink" a compiled program instead of a Python script-based programmer. 
Just run `make flash` under each of the game folders (*/Software/Waginator_CH32V003-GameConsole/software*) to compile & flash the final Hex file into the MCU.

All 3 development methods mentioned above have been tested to work with the official WCH Link-E Programmer, requiring Pins **3v3**, **GND** & **SWDIO**



~ PY32F003 Development ~
Cartridge Peripheral PinMapping:

- I2C (OLED & RTC)
  - **PA2** - SDA
  - **PA3** - SCL
- GPIO (Button & Speaker)
  - **PA0** - Up Button
  - **PA5** - Down Button
  - **PA1** - Left Button
  - **PA6** - Right Button
  - **PB0** - FireA Button 
  - **PB0** - FireB Button
  - **PA7** - Speaker

(1) For C Development of the PY32F Platform, please follow the instructions found in the [[py32f0-template](https://github.com/IOsetting/py32f0-template)] repository. 

The above development method have been tested to work with any DAPLInk Programmer (Even CH552 DapLink), requiring Pins **3v3**, **GND**,  **SWDIO**, **SWCLK** & **RESET**