#!/bin/bash

# Asking sudo
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

echo "@author 懒虫"
# 获取当前目录
targetPath=$(cd "$(dirname "$0")"; pwd)
echo "项目目录："$targetPath
# 切换当前目录
cd $targetPath

sudo cp ./1/* /Users/wuzhimin/Desktop/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/
sudo cp ./2/* /Users/wuzhimin/Desktop/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib/
sudo cp ./3/* /Users/wuzhimin/Desktop/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/
sudo cp ./4/* /Users/wuzhimin/Desktop/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/