#!/bin/bash
# script for Installer Legacy-Video-patch
# By chris1111
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"

# shell script Notifications
osascript -e 'display notification "Installer Legacy-Video-patch" with title "Create"  sound name "default"'

rm -rf ./LegacyVideo-patch
rm -rf ./Legacy-Video-patch.pkg
rm -rf /tmp/PackageDIR
Sleep 1
mkdir -p ./LegacyVideo-patch
mkdir -p ./LegacyVideo-patch/BUILD-PACKAGE
mkdir -p /tmp/PackageDIR

# Create the Packages with pkgbuild

pkgbuild --root ./GPUFramework --identifier com.chris1111.legacyVideoPatch.GPUFramework.pkg --version 1 --install-location /tmp ./LegacyVideo-patch/BUILD-PACKAGE/GPUFramework.pkg

pkgbuild --root ./DisplayFramework --identifier com.chris1111.legacyVideoPatch.DisplayFramework.pkg --version 1 --install-location /tmp ./LegacyVideo-patch/BUILD-PACKAGE/DisplayFramework.pkg

pkgbuild --root ./SkyLight --identifier com.chris1111.legacyVideoPatch.SkyLight.pkg --version 1 --install-location /tmp ./LegacyVideo-patch/BUILD-PACKAGE/SkyLight.pkg

pkgbuild --root ./KEXT --identifier com.chris1111.legacyVideoPatch.KEXT.pkg --version 1 --install-location /tmp ./LegacyVideo-patch/BUILD-PACKAGE/KEXT.pkg

pkgbuild --root ./Install --scripts ./Script --identifier com.chris1111.legacyVideoPatch.Install.pkg --version 1.0 --install-location /tmp ./LegacyVideo-patch/BUILD-PACKAGE/Install.pkg


Sleep 2
# Expend the Packages with pkgutil
pkgutil --expand ./LegacyVideo-patch/BUILD-PACKAGE/GPUFramework.pkg /tmp/PackageDIR/gpuframework.pkg
pkgutil --expand ./LegacyVideo-patch/BUILD-PACKAGE/DisplayFramework.pkg /tmp/PackageDIR/displayframework.pkg
pkgutil --expand ./LegacyVideo-patch/BUILD-PACKAGE/SkyLight.pkg /tmp/PackageDIR/skylight.pkg
pkgutil --expand ./LegacyVideo-patch/BUILD-PACKAGE/KEXT.pkg /tmp/PackageDIR/kext.pkg
pkgutil --expand ./LegacyVideo-patch/BUILD-PACKAGE/Install.pkg /tmp/PackageDIR/install.pkg

Sleep 2
# Copy resources and distribution
cp -r ./Resources/Distribution /tmp/PackageDIR
cp -r ./Resources/Resources /tmp/PackageDIR
Sleep 5
# Flatten the Packages with pkgutil
pkgutil --flatten /tmp/PackageDIR ./Legacy-Video-patch.pkg


