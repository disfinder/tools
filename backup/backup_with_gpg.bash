#!/bin/bash
SOURCEDIR=$1
DESTFILE=$2
echo "Start backup"
tar cz $SOURCEDIR | gpg --homedir /media/truecrypt21/pgp/keys_for_epm_files/  -r Backup --output $DESTFILE --encrypt
echo "End backup"

