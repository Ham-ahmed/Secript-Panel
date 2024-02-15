
#!/bin/sh
#

wget -O /var/volatile/tmp/enigma2-plugin-skins-aglare-fhd_1.2_atv-egami.ipk "https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/enigma2-plugin-skins-aglare-fhd_1.2_atv-egami.ipk"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
rm -f /var/volatile/tmp/enigma2-plugin-skins-aglare-fhd_1.2_atv-egami.ipk
wait
sleep 2;
exit 0

