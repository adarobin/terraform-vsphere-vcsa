#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail
# set -o xtrace

resp=""
state=""
status=""

while true; do
    resp=`curl --silent --insecure --user "${VAMI_USERNAME}:${VAMI_PASSWORD}" https://${VCENTER_HOSTNAME}:5480/rest/vcenter/deployment` || true
    state=`echo $resp | jq -r '.state'` || true
    status=`echo $resp | jq -r '.status'` || true

    if [ "$state" = "INITIALIZED" ] && [ "$status" = "SUCCEEDED" ]; then
        echo "Stage 1 is complete"
        break
    fi

    echo "Stage 1 state was $state and status was $status. Sleeping for 20 seconds."
    sleep 20
done

exit 0
