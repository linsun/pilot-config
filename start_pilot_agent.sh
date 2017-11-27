#!/bin/bash

cat /tmp/frontdoor-envoy-config.json | sed "s/frontdoorpodname/$POD_NAME/g"  > /etc/istio/proxy/frontdoor-envoy-config.json

rm /tmp/frontdoor-envoy-config.json

/usr/local/bin/pilot-agent "$@"