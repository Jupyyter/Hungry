#!/bin/sh
echo -ne '\033c\033]0;I am hungry and my name is Hadarag Gabriel\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/gabrielIsHungryL.x86_64" "$@"
