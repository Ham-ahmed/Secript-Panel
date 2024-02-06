#!/bin/sh
echo "Install Oscam-11732 "
sleep 1
cd /tmp
curl  -k -Lbk -m 55532 -m 555104 "https://raw.githubusercontent.com/MOHAMED19OS/Enigma2_Store/main/Cam_Emulator/enigma2-plugin-softcams-oscam_11732-emu-r799_all.ipk" > /tmp/oscam-11732_all.ipk
sleep 1
echo "install Oscam-11732...."
cd /tmp
opkg install /tmp/oscam-11732_all.ipk
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
sleep 1
rm /tmp/oscam-11732_all.ipk
sleep 2
killall -9 enigma2
exit
