#!/bin/sh
#

wget -O /var/volatile/tmp/enigma2-ipaudiopro-picons-mnasr-140124_v1.0_all.ipk "https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/enigma2-ipaudiopro-picons-mnasr-140124_v1.0_all.ipk"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
rm -f /var/volatile/tmp/enigma2-ipaudiopro-picons-mnasr-140124_v1.0_all.ipk
sleep 2;
exit 0
















