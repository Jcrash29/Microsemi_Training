# Information

3/9/2017, microsemi training with Future Electronics in Minneapolis.

This training requires a SmartFusion2 or IGLOO2 development board.

# StartUp

To begin you need to install the Libero SoC software. Follow the included documentation [here](Documentation/Setup Libro Software.pdf)

# Lab 1 VHDL

This was the first lab, which simply implements two blinking LED's. One at 1 second and the other at 2 seconds. By pressing the two switches on the board the LEDS will change according to the following information:

* Press and hold SW1 --> led 1(green) blinks every 0.5sec
* Press and hold SW2 --> led 2(red) blinks every 1sec
* Press and hold SW1 and SW2 --> led 1(green) and led 2(red) turn off

# Lab 2 VHDL

this lab walks through a similar control of the LEDs. However by following the lab2 instructions, we can walk though the ability to choose the fabric area, which can be used/not used.

However more importantly is their ability to do SMartDebug with active probes and probe insertion. This allows you to debug the fabric in real time, without stopping the processor.

The probe insertion also allows you to connect pins to a certain input pin. In this case we setup the switches to connect directly to 2 of the LEDs. 

I found it most interesting that even when the board lost power these probe insertions remained. 

