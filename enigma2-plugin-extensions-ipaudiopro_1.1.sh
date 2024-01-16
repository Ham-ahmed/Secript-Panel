#!/bin/sh
#

wget -O /var/volatile/tmp/enigma2-plugin-extensions-ipaudiopro_1.1.tar.gz "https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/enigma2-plugin-extensions-ipaudiopro_1.1.tar.gz"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
rm -f /var/volatile/tmp/enigma2-plugin-extensions-ipaudiopro_1.1.tar.gz
sleep 2;
exit 0
















