#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail
# set -o xtrace

resp=""
state=""
status=""

curl --silent --insecure --request POST --header "Content-Type: application/json" --user "${VAMI_USERNAME}:${VAMI_PASSWORD}" --data "${BODY}" https://${VCENTER_HOSTNAME}:5480/rest/vcenter/deployment/install?action=start

while true; do
    resp=`curl --silent --insecure --user "${VAMI_USERNAME}:${VAMI_PASSWORD}" https://${VCENTER_HOSTNAME}:5480/rest/vcenter/deployment` || true
    state=`echo $resp | jq -r '.state'` || true
    status=`echo $resp | jq -r '.status'` || true

    if [ "$state" = "CONFIGURED" ] && [ "$status" = "SUCCEEDED" ]; then
        echo "Stage 2 is complete"
        break
    fi

    echo "Stage 2 state was $state and status was $status. Sleeping for 20 seconds."
    sleep 20
done

exit 0
