#!/bin/bash
#config
espp=$(cat /etc/enigma2/settings | grep config.plugins.AJPanel.backupPath | cut -d '=' -f 2)


echo "> done"
sleep 3s
exit 0
