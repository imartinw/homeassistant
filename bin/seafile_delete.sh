#!/bin/bash

LOCALFILE=$1
REMOTEFILE=$(basename $1)
REPOID="2eef99f4-37ff-412d-9601-a347c65e0f6d"
TOKEN="16e3460e54ee66290d17433624aca4583ab91ffd"
SERVERURL="https://seafile.martinwiesemann.de"

curl --silent --insecure -X DELETE -H "Authorization: Token $TOKEN" "$SERVERURL/api2/repos/$REPOID/file/?p=/$REMOTEFILE"

# end of file
