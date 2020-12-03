#!/bin/bash

osascript -e 'tell app "System Events" to display dialog "Disable Gatekeeper" with icon file "System:Library:CoreServices:CoreTypes.bundle:Contents:Resources:FileVaultIcon.icns" buttons {"Disable"} default button 1 with title "Gatekeeper"'

osascript -e 'do shell script "sudo spctl --master-disable" with administrator privileges'