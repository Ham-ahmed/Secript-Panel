#!/bin/bash
#config
espp=$(cat /etc/enigma2/settings | grep config.plugins.AJPanel.backupPath | cut -d '=' -f 2)


pack="ajpanel_menu.xml"
package=$espp$pack
url=https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/ajpanel_menu_HA.xml
if [ "$espp" == "/media/hdd/AJPanel_Backup/" ]; then
pack="ajpanel_menu_HA.xml"
package=$espp$pack
fi


echo "> done"
sleep 3s
exit 0
