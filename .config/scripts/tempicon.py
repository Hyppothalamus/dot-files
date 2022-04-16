#!/usr/bin/env python3
import subprocess

def calcIcons():
   temp = subprocess.check_output('sensors | grep "Tctl" | tr -d \'+\' | tr -d \'°C\' | awk \'{print $2}\'', shell=True).decode('utf-8')
   temp = int(temp[:-3])
   if (temp <= 30):
       return ' ' + str(temp) + '°C'
   elif (temp <= 50):
       return ' ' + str(temp) + '°C'
   elif (temp <= 60):
       return ' ' + str(temp) + '°C'
   elif (temp <= 70):
       return ' ' + str(temp) + '°C'
   elif (temp > 70):
       return ' ' + str(temp) + '°C'
print(calcIcons())
