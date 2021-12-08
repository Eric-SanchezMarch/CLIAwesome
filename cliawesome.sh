#!/bin/bash

#
# CyTerm v.01
#

#
# cliawesome es un script que llança una terminal en una posicio aleatoria 
# amb fins a 16.875.000 estils diferents posibles.



#==============
#    SCRIPT
#==============

#Posicio pantalla
VARGX=$(($RANDOM%1200))
VARGY=$(($RANDOM%700))

#Color background
VARR=$(($RANDOM%150))
VARG=$(($RANDOM%150))
VARB=$(($RANDOM%150))

#Color text
VARC=$(($RANDOM%4))

#Funcio text
if [ $VARC -eq 0 ]; then 
TEXTCOLOR=yellow
elif [ $VARC -eq 1 ]; then 
TEXTCOLOR=white
elif [ $VARC -eq 2 ]; then 
TEXTCOLOR=green
elif [ $VARC -eq 3 ]; then 
TEXTCOLOR=cyan
elif [ $VARC -eq 4 ]; then 
TEXTCOLOR=magenta
else
TEXTCOLOR=white
fi




exo-open --launch TerminalEmulator --geometry 80x26+$VARGX+$VARGY --color-text="$TEXTCOLOR" --color-bg="rgba($VARR,$VARG,$VARB,0)"
