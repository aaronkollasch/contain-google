
run:
    web-ext run -s . -u about:debugging#/runtime/this-firefox

sign:
    #!/usr/bin/env bash
    set -euo pipefail
    if [ -z ${WEB_EXT_API_KEY+x} ]; then
        read -s -p "WEB_EXT_API_KEY: " WEB_EXT_API_KEY
        echo
    fi
    if [ -z ${WEB_EXT_API_SECRET+x} ]; then
        read -s -p "WEB_EXT_API_SECRET: " WEB_EXT_API_SECRET
        echo
    fi
    web-ext sign --channel unlisted --api-key $WEB_EXT_API_KEY --api-secret $WEB_EXT_API_SECRET
