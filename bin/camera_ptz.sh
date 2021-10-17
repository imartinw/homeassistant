#!/bin/bash

CONF_DIR=$(dirname $0)/..
SECRETS_FILE=$CONF_DIR/secrets.yaml

CAMERA_USERNAME=$(grep camera_username $SECRETS_FILE | cut -d' ' -f2)
CAMERA_PASSWORD=$(grep camera_password $SECRETS_FILE | cut -d' ' -f2)

declare -i PTZ_POSITION
declare -i COMMAND

PTZ_POSITION=$2

if (( $PTZ_POSITION < 1 || $PTZ_POSITION > 8 )); then
  echo "Usage: $0 IP_ADRESS PTZ-POSITION" 1>&2
  exit 1
else
  COMMAND=$(( 2 * PTZ_POSITION + 29 ))
fi

/usr/bin/curl http://$CAMERA_USERNAME:$CAMERA_PASSWORD@$1/decoder_control.cgi?command=${COMMAND}

# end of file
