#!/bin/sh

BASEDIR="backups"

TARFILE="$(ls -ltr $BASEDIR/ | awk '{print $9}' | tail -n 1)"
bin/seafile_upload.sh "$BASEDIR/$TARFILE"

# end of file
