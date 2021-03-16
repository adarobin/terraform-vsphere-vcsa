#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail
# set -o xtrace

if [ "$ENABLE_SSH" = "TRUE" ]; then
    echo "ENABLE_SSH was set to $ENABLE_SSH, attempting to enable."
    curl --silent --insecure --request POST --header "Content-Type: application/json" --user "${VAMI_USERNAME}:${VAMI_PASSWORD}" --data '{"enabled":true}' https://${VCENTER_HOSTNAME}:5480/rest/appliance/access/ssh
else
    echo "ENABLE_SSH was set to $ENABLE_SSH, skipping."
fi

exit 0
