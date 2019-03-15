#!/usr/bin/env fish

set filename (readlink -f $argv[1])
eval "bash genzathurarc > $HOME/.config/zathura/zathurarc"
eval "zathura "'""$filename""'" &"



