#!/bin/bash

LOCALFILE=$1
REMOTEFILE=$(basename $1)
REPOID="ec7af4a9-313e-4d19-a5fd-6deb57e29433"
TOKEN="16e3460e54ee66290d17433624aca4583ab91ffd"
SERVERURL="https://seafile.martinwiesemann.de"

echo $LOCALFILE >> /tmp/upload.log
UPLOADLINK=$(curl --insecure -H "Authorization: Token $TOKEN" $SERVERURL/api2/repos/$REPOID/upload-link/ | cut -f2 -d'"')
curl --insecure -H "Authorization: Token $TOKEN" -F file=@"$LOCALFILE" -F filename="$REMOTEFILE" -F parent_dir="/" $UPLOADLINK

# end of file
