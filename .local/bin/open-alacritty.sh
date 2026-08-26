#!/bin/sh

window_id=$( kdotool getactivewindow )
echo "Acrive window id: $window_id"

window_class=$( kdotool getwindowclassname "$window_id" )
echo "Active window class: $window_class"

if [ "$window_class" = "org.kde.dolphin" ]; then
    echo "Window is dolphin"

    window_name=$( kdotool getwindowname "$window_id" )
    echo "Window name: $window_name"

    if [[ "$window_name" == *" — Dolphin"* ]]; then
        dash_count=$( echo "$window_name" | tr -dc '—' | awk '{ print length; }' )
        echo "Dashes count: $dash_count"

        case "$dash_count" in ''|*[!0-9]*) echo "What" ;; *)
            open_path=$( echo "$window_name" | cut -d '—' -f "-$dash_count" | awk '{$1=$1};1' )
            echo "Opening alacritty in $open_path"
            exec alacritty --working-directory "$open_path" $@
        ;; esac
    else
        echo "Unknown dolphin window format :("
    fi
else
    echo "Window is NOT dolphin"
fi

exec alacritty $@
