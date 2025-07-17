#!/bin/bash

# Your VPN settings
VPN_PID_FILE="/tmp/openconnect.pid"
VPN_LOG="/tmp/openconnect.log"
YAD_PID_FILE="/tmp/yad_globalprotect.pid"
VPN_SERVER=""
VPN_USER=""
VPN_PASSWORD=""

# Check if OpenConnect is running
if [ -f "$VPN_PID_FILE" ] && ps -p $(cat "$VPN_PID_FILE") > /dev/null 2>&1; then
    echo "Disconnecting VPN..."
    kill $(cat "$VPN_PID_FILE")
    rm "$VPN_PID_FILE"
else
    echo "Connecting to VPN..."
    echo "$VPN_PASSWORD" | sudo openconnect --protocol=gp --user="$VPN_USER" --passwd-on-stdin "$VPN_SERVER" --useragent="GlobalProtect/5.2.10-6" --no-dtls --servercert pin-sha256:yZMMA9+p7bYfnBZgXRVBZTG0QRXc1Z+Mv4RLHvtsXDY= > "$VPN_LOG" 2>&1 &
    VPN_PID=$!
    echo $VPN_PID > "$VPN_PID_FILE"

    #yad
    yad --notification \
        --image="/media/fureasu/DATA/Media/Logos/globalprotectlogo.png" \
        --text="GlobalProtect VPN Connected" \
        --command="kill $VPN_PID" &
    YAD_PID=$!
    echo $YAD_PID > "$YAD_PID_FILE"

    wait $VPN_PID
    rm -f "$VPN_PID_FILE"

    if [ -f "$YAD_PID_FILE" ]; then
	    kill $(cat "$YAD_PID_FILE") 2>/dev/null
	    rm "$YAD_PID_FILE"
    fi

fi

