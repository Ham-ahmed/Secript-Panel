#!/bin/sh
#
cd /tmp
set -e
 wget "https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/New_panel-ajpanel_v4.0_HA.tar.gz"
wait
tar -xzf New_panel-ajpanel_v4.0_HA.tar.gz  -C /
wait
cd ..
set +e
rm -f /tmp/New_panel-ajpanel_v4.0_HA.tar.gz
sleep 2;
echo "" 
echo "" 
echo "**************************************************************************************************"
echo "#  INSTALLED SUCCESSFULLY #"
echo "*      88888888  88888888   8888     88  88888888   88       *"
echo "*      88    88  88    88   88 88    88  88         88       *"
echo "*      88888888  88888888   88  88   88  88888888   88       *"
echo "*      88        88    88   88   88  88  88         88       *"
echo "*      88        88    88   88     8888  88888888   88888888 *"
echo "*          EDITE - Hamdy-Ahmed                               *"
echo "*           88888888    888888    88888888    88     88      *"
echo "*                 88    88  88          88    88     88      *"
echo "*           88888888    88  88    88888888    888888888      *"
echo "*           88          88  88    88                 88      *"
echo "*           88888888    888888    88888888           88      *"
echo "*                Enigma2 restart is required                 *"
echo "*************************************************************************************************"
echo "   UPLOADED BY  >>>>   HAMDY_AHMED-2024 "
sleep 4;
	echo '========================================================================================='
###########################################                                                                                                                  
echo ". >>>>         RESTARING     <<<<"
echo "*************************************************************************************************"
wait
killall -9 enigma2
exit 0





























