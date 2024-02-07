
#!/bin/sh
#

wget -O /var/volatile/tmp/e2-plugin-skin-octetfhdbp-x_2.0_all.ipk "https://raw.githubusercontent.com/MOHAMED19OS/Enigma2_Store/main/Cam_Emulator/enigma2-plugin-softcams-oscam_11732-emu-r799_all.ipk"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
rm -f /var/volatile/tmp/enigma2-plugin-softcams-oscam_11732-emu-r799_all.ipk
wait
sleep 2;
exit 0