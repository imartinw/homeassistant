#!/bin/sh
#
# delete_old_backups.sh
#

BASEDIR="backups"

find $BASEDIR -type f -name '*.tar' -mtime +14 -exec bin/seafile_delete_file.sh "{}" \;
find $BASEDIR -type f -name '*.tar' -mtime +14 -delete

# end of file

