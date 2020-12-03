# Legacy Video patch
# (c) Copyright 2020 chris1111 
# This will create a Apple Bundle App Legacy Video patch
# Dependencies: osacompile
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"

# Declare some VARS
APP_NAME="Legacy Video patch.app"
SOURCE_SCRIPT="Legacy Video patch.applescript"

echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
echo " Create Legacy Video patch"
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "

# See if the app is already exist
if [ -d "${3}./Legacy Video patch.app" ]; then
	rm -rf "${3}./Legacy Video patch.app"
fi

if [ -d "${3}./BUILD/Legacy Video patch.app" ]; then
	rm -rf "${3}./BUILD/Legacy Video patch.app"
fi


Sleep 2

# Create the dir structure
/usr/bin/osacompile -o ./BUILD/"$APP_NAME" "$SOURCE_SCRIPT"

# Copy icon to the right place
cp -rp ./Icon/droplet.icns ./BUILD/"$APP_NAME"/Contents/Resources
cp -r ./Icon/Badge.tiff ./BUILD/"$APP_NAME"/Contents/Resources
cp -r ./Icon/DocumentIcon.png ./BUILD/"$APP_NAME"/Contents/Resources


# Copy Legacy Video Patch
./Sources/rsync -av ./Kexts-Bundle/* ./BUILD/"$APP_NAME"/Contents/Resources/Scripts/


# Change icons, delete droplet
./Icon/icon.py ./droplet.icns ./BUILD/"$APP_NAME"
rm -rf ./BUILD/"$APP_NAME"/Contents/MacOS/droplet

# Copy source
cp -rp ./Sources/Info.plist ./BUILD/"$APP_NAME"/Contents
cp -r ./Sources/Frameworks ./BUILD/"$APP_NAME"/Contents
cp -r ./Sources/MacOS/FancyDroplet ./BUILD/"$APP_NAME"/Contents/MacOS
cp -r ./Sources/recovery.rtf ./BUILD/"$APP_NAME"/Contents/Resources/Scripts
cp -r ./Sources/POST ./BUILD/"$APP_NAME"/Contents/Resources/Scripts
cp -r ./Sources/en.lproj ./BUILD/"$APP_NAME"/Contents/Resources
cp -r ./Sources/Base.lproj ./BUILD/"$APP_NAME"/Contents/Resources
cp -r ./Sources/Assets.car ./BUILD/"$APP_NAME"/Contents/Resources
cp -rp ./Sources/description.rtfd ./BUILD/"$APP_NAME"/Contents/Resources
cp -r ./Sources/License.rtf ./BUILD/"$APP_NAME"/Contents/Resources
cp -r ./Sources/Credits.rtf ./BUILD/"$APP_NAME"/Contents/Resources



Sleep 2
# Avoid issue opening the app
mv ./BUILD/"$APP_NAME" ./"$APP_NAME"
Sleep 2
xattr -cr ./"$APP_NAME"


echo " = = = = = = = = = = = = = = = = = = = = = = = = = 
Legacy Video patch completed Done!
= = = = = = = = = = = = = = = = = = = = = = = = =  "


