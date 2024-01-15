#!/bin/sh
#

wget -O /etc/enigma2/IPAudioPro.json "https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/IPAudioPro.json"
wait
sleep 2;
echo "   UPLOADED BY  >>>>   H-Ahmed "
sleep 4;
	echo '========================================================================================================================='
###########################################                                                                                                                  
echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 0





























