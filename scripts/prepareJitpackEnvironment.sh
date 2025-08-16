#!/bin/bash
# Fix for https://jitpack.io/docs/ANDROID/

# Accept licenses
mkdir -p $ANDROID_HOME/licenses
echo "8933bad161af4178b1185d1a37fbf41ea5269c55" > $ANDROID_HOME/licenses/android-sdk-license
echo "d56f5187479451eabf01fb78af6dfcb131a6481e" >> $ANDROID_HOME/licenses/android-sdk-license
echo "24333f8a63b6825ea9c5514f83c2829b004d1fee" >> $ANDROID_HOME/licenses/android-sdk-license

# Install missing packages
yes | ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager "platforms;android-33"
