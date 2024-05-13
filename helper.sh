#!/bin/bash

if [ "$1" == "install" ]; then
    echo "Installing $2..."
    kpackagetool6 --type=KWin/Script -i "$2/"
fi

if [ "$1" == "upgrade" ]; then
    echo "Upgrading $2..."
    kpackagetool6 --type=KWin/Script -u "$2/"
fi


if [ "$1" == "uninstall" ]; then
    echo "Uninstalling $2..."
    kpackagetool6 -r "$2/"
fi

if [ "$1" == "devconsole" ]; then
    echo "Uninstalling $2..."
    kpackagetool6 -r "$2/"
fi

if [ "$1" == "enable" ]; then
    echo "Upgrading $2..."
    kwriteconfig6 --file kwinrc --group Plugins --key "$2"Enabled true
    qdbus org.kde.KWin /KWin reconfigure
fi

if [ "$1" == "reconfigure" ]; then
    qdbus org.kde.KWin /KWin reconfigure
fi

if [ "$1" == "reconfigure" ]; then
    qdbus org.kde.KWin /KWin reconfigure
fi