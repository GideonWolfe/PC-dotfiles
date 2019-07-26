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

# Set the colors for telegram-desktop
# Chat background not setting for some reason, must set manually
echo "##########################"
echo "# Updating Telegram Skin #"
echo "##########################"
$HOME/.telegram-palette-gen/telegram-palette-gen --wal
echo ""

# Updates steam skin (requires python-wal-steam-git from AUR)
echo "#######################"
echo "# Updating Steam Skin #"
echo "#######################"
wal_steam -w
echo ""

# Update Keyboard colors
echo "###########################"
echo "# Updating Keyboard Color #"
echo "###########################"
KEYBOARDCOLOR=$(cat $HOME/.cache/wal/colors | head -n 3 | tail -n 1 | sed 's/#//')
echo rgb $KEYBOARDCOLOR > /dev/input/ckb1/cmd
echo "Keyboard Color Set"
echo ""

# Update Spotify colors (requires app restart)
echo "##########################"
echo "# Updating Spotify Color #"
echo "##########################"
oomoxify-cli  $HOME/cache/wal/colors-oomox -s /opt/spotify/Apps/
echo "Spotify Theme Set"
echo ""


