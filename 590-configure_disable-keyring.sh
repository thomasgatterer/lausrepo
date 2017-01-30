#!/bin/bash
#
# 
# installiert den Standarddesktop   
# für Ubuntu 14.04
# 
# Borg Innsbruck
# 
# Schlüsselbund global deaktivieren
#
DATUM=$(date +"%Y-%m-%d")
# damit wird der Schlüsselbund nicht automatisch entsperrt
mv  /usr/share/dbus-1/services/org.freedesktop.secrets.service /usr/share/dbus-1/services/org.freedesktop.secrets.service.deactivated.$DATUM
#
for file in `ls /usr/share/dbus-1/services/org.gnome.keyring.*` ; do
 	mv $file $file.deactivated.$DATUM ; 
 done
# in PAM deaktivieren:
#
cp /etc/pam.d/common-password /etc/pam.d/common-password.$DATUM
sed '/.*password[ \t]*optional[ \t]*pam_gnome_keyring.so/d' /etc/pam.d/common-password > /root/common-password.tmp
mv /root/common-password.tmp /etc/pam.d/common-password
#
BACKUPFILE=$(date +"/etc/pam.d/lightdm.%Y-%m-%d")
cp /etc/pam.d/lightdm /etc/pam.d/lightdm.$DATUM
sed '/.*auth[ \t]*optional[ \t]*pam_gnome_keyring.so.*/d' /etc/pam.d/lightdm | \
sed '/.*session[ \t]*optional[ \t]*pam_gnome_keyring.so.*/d' > /root/lightdm.tmp
mv /root/lightdm.tmp /etc/pam.d/lightdm
#
BACKUPFILE=$(date +"/etc/pam.d/lightdm-greeter.%Y-%m-%d")
cp /etc/pam.d/lightdm-greeter /etc/pam.d/lightdm-greeter.$DATUM
sed '/.*auth[ \t]*optional[ \t]*pam_gnome_keyring.so.*/d' /etc/pam.d/lightdm-greeter | \
sed '/.*session[ \t]*optional[ \t]*pam_gnome_keyring.so.*/d'  > /root/lightdm-greeter.tmp
mv /root/lightdm-greeter.tmp /etc/pam.d/lightdm-greeter
#
# Im Autostartordner deaktivieren
for file in `ls /etc/xdg/autostart/gnome-keyring-*`; do mv $file $file.deactivated.$DATUM ; done
#

