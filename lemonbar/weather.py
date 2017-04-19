#!/usr/bin/python3

"""
Toma los datos del tiempo del momento y los guarda en un archivo
para usar con bash. Se ejecuta regularmente usando cron.
Imprime en formato para usar en lemonbar
"""

import urllib.request as rq
import json, os, datetime

# Asumiendo tipografía siji
iconos = {'clear-day': '',
          'clear-night': '',
          'rain': '',
          'snow': '',
          'sleet': '',
          'wind': '',
          'fog': '',
          'cloudy': '',
          'partly-cloudy-day': 'ȱ',
          'partly-cloudy-night': ''}

api_url = "https://api.darksky.net/forecast/57f9710e943b59dee5181da08c36cfd8/-37.9977,-57.5483?lang=es&units=si"
datos = json.loads(rq.urlopen(api_url).read())['currently']

if datos['icon'] in ['clear-day', 'partly-cloudy-day']:
    color = "%{F$YELLOW}"
elif datos['icon'] in ['clear-night', 'partly-cloudy-night']:
    color = "%{F$BLUE}"
else:
    color = "%{F$GRAY}"

if datos['temperature'] <= 10:
    color_temp = "%{F$BLUE}"
elif datos['temperature'] <= 20:
    color_temp = "%{F$GREEN}"
elif datos['temperature'] <= 30:
    color_temp = "%{F$YELLOW}"
else:
    color_temp = "%{F$RED}"

delta_t = datetime.datetime.now() - datetime.datetime.fromtimestamp(datos['time'])

if delta_t.seconds > 3600:
    ultima_actualizacion = '(' + str(int(delta_t.seconds/3600)) + 'h) '
else:
    ultima_actualizacion = ''

icono = '%{T2}' + iconos[datos['icon']] + '%{T-}'
lemon_out = "%{A1:urxvt -hold -g 130x42 -e bash -c 'curl wttr.in/Mar%20del%20Plata':}" + \
            ultima_actualizacion + color + icono + ' ' + \
            color_temp + str(round(datos['temperature'])) + '°C' + ' ' \
            '%{F-} h: ' + str(round(datos['humidity']*100)) + '%' \
            '  p: ' + str(datos['pressure']) + ' hPa' + '%{A}'

wdir = os.path.dirname(os.path.realpath(__file__))
archivo = open(wdir + '/weather_info', mode='w')
archivo.write(lemon_out)
archivo.close()
