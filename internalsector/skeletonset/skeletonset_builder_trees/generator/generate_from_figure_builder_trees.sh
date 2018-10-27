#!/bin/bash

skeleton_module=$1
figure_module=`echo ${skeleton_module} | sed -e 's/Skeleton/Figure/' -e 's/skeleton/figure/g'
`
cp $BFIG/${figure_module} ${skeleton_module}
modify_string.pl figure skeleton  ${skeleton_module}
modify_string.pl Figure Skeleton  ${skeleton_module}
