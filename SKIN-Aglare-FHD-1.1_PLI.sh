
#!/bin/sh
#

wget -O /var/volatile/tmp/enigma2-plugin-skins-aglare-fhd-pli_1.1_all.ipk "https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/enigma2-plugin-skins-aglare-fhd-pli_1.1_all.ipk"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
rm -f /var/volatile/tmp/enigma2-plugin-skins-aglare-fhd-pli_1.1_all.ipk
wait
sleep 2;
exit 0

