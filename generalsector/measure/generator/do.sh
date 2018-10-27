#!/bin/bash

this="energy" 
    ttt=ma${this:0:1} 
    uuu=ua${this:0:1} 
    cp template_measure_actual_this_v.ml Measure_actual_${this}_v.ml
    modify_string.pl this ${this} Measure_actual_${this}_v.ml
    modify_string.pl ttt  ${ttt}  Measure_actual_${this}_v.ml
    modify_string.pl uuu  ${uuu}  Measure_actual_${this}_v.ml
 
