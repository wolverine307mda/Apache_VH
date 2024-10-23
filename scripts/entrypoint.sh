#!/bin/bash

# Habilitar los sitios
a2ensite mario.conf
a2ensite dedomingo.conf
a2ensite seguro.conf

# Habilitamos ssl
a2enmod ssl

# Recargar la configuración de Apache
service apache2 reload

# Iniciar Apache en primer plano
apache2ctl -D FOREGROUND