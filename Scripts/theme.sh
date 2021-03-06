#!/bin/bash
# Author: Gideon Wolfe
# Usage: theme [image] [other wal options]

# Check to make sure at least one argument was passed
if (( $# < 1 )); then
    echo "Wal needs at least one argument"
    exit 1
fi

# Extract the filepath of the image and call wal on it
# You can pass wal command flags to this script and they are passed to wal
echo "#######################"
echo "# Running Wal On Image#"
echo "#######################"
FILEPATH=$(readlink -f "$1")
wal -i $FILEPATH ${@:2}
echo ""

# Set wallpaper to stretch all monitors
#feh $FILEPATH --bg-fill --no-xinerama

# Set the colors for telegram-desktop
# Chat background not setting for some reason, must set manually
if [ -x "$(command -v telegram-desktop)" ]; then
    if ! [ test -f "$HOME/.telegram-palette-gen/telegram-palette-gen" ]; then
        echo "Install telegram palette gen: https://github.com/matgua/telegram-palette-gen"
    else
        echo "##########################"
        echo "# Updating Telegram Skin #"
        echo "##########################"
        $HOME/.telegram-palette-gen/telegram-palette-gen --wal
        echo ""
    fi
fi

# Updates steam skin (requires python-wal-steam-git from AUR)
if [ -x "$(command -v wal_steam)" ]; then
    echo "#######################"
    echo "# Updating Steam Skin #"
    echo "#######################"
    wal_steam -w
    echo ""
fi

# Update Keyboard colors
if [ -x "$(command -v ckb-next)" ]; then
    echo "###########################"
    echo "# Updating Keyboard Color #"
    echo "###########################"
    KEYBOARDCOLOR=$(cat colors.css | grep color6 | awk '{print $2}' | cut -c2- | rev | cut -c2- | rev)
    echo rgb $KEYBOARDCOLOR > /dev/input/ckb1/cmd
    echo "Keyboard Color Set"
    echo ""
fi

# Update Spotify colors (requires app restart)
if [ -x "$(command -v spotify)" ]; then
    if [ -x "$(command -v oomoxify-cli)" ]; then
        echo "##########################"
        echo "# Updating Spotify Color #"
        echo "##########################"
        oomoxify-cli  $HOME/.cache/wal/colors-oomox -s /opt/spotify/Apps/
        echo "Spotify Theme Set"
        echo ""
    fi
fi

# Update Zathura colors (requires Zathura-Pywal)
if [ -x "$(command -v genzathurarc)" ]; then
    echo "##########################"
    echo "# Updating Zathura Color #"
    echo "##########################"
    genzathurarc > $HOME/.config/zathura/zathurarc
    echo "Zathura Theme Set"
    echo ""
fi

# Update Gnuplot colors (requires Gnuplot-Pywal)
if [ -x "$(command -v gengnuplotconfig)" ]; then
    echo "##########################"
    echo "# Updating Gnuplot Color #"
    echo "##########################"
    gengnuplotconfig > $HOME/.gnuplot
    echo "Gnuplot Theme Set"
    echo ""
fi
