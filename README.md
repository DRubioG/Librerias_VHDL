# Librerias_VHDL
 Esta es mi librería personal  de componentes hechos en VHDL

## [reloj.vhd](reloj.vhd)
Este archivo contiene un reloj/prescaler genérico que genera un pulso cada "frec" pulsos.
Consta de:
 - 2 entradas :  
    - clk : reloj de la placa
    - rst : reset de la placa
 - 1 salida : 
    - reloj : salida de reloj, genera un pulso de duranción 1 ciclo de reloj
 - 1 generic :
    - frec : numero de pulsos de reloj que generan un pulso de reloj
## [pwm.vhd](pwm.vhd)
Este archivo contiene la forma de generar una PWM.
Consta de:
 - 3 entradas:
    - clk : reloj de la placa
    - rst : reset de la placa
    - ciclo_trabajo : ciclo de trabajo de la PWM, 20 bits
- 1 salida:
    - pwm : salida de la PWM
- 1 generic: 
    - pwm_periodo : numero de pulsos de reloj para completar un periodo de la PWM