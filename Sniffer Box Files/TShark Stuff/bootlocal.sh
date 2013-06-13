#!/bin/sh
# put other system startup commands here
crond -L /dev/null 2>&1

mount /dev/sda1
mount /dev/sda2
mount /dev/sdb1
mount /dev/sdb2

sudo mkdir /mnt/sda1/tshrk_precaps

/etc/tshrk_scripts/precheck
/etc/tshrk_scripts/chkshrk

chmod -R 777 /mnt/sda1/tshrk_pcaps/

/usr/local/etc/init.d/openssh start

/etc/tshrk_scripts/ip_mailer
