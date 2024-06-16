#!/usr/bin/env bash

set -euro pipefail

# Слова используемые только в префиксах.
declare -r prefix_words=(
    "Last"
    "Grand"
    "Red"
    "Green"
    "Black"
    "White"
    "Light"
    "Dark"
    "Big"
    "Large"
    "Best"
    "Fast"
    "First"
)

# Универсальные слова.
declare -r words=(
    "Cube"
    "Mine"
    "Tool"
    "Apple"
    "Grief"
    "You"
    "Tube"
    "Wall"
    "Day"
    "Rise"
    "Sun"
    "Moon"
    "Shield"
    "Star"
    "Space"
    "Time"
    "Fun"
    "Golem"
    "Win"
    "War"
    "Sky"
    "Nuclear"
    "Cave"
    "Night"
    "Bean"
    "Next"
    "Castle"
    "Door"
    "Run"
    "MC"
    "Drop"
    "Atom"
    "X"
    "Pro"
    "Cow"
    "Pig"
    "Chicken"
    "World"

    "${prefix_words[@]}"
)

function get_random_word_index() {
    echo "$((RANDOM % ${#words[@]}))"
}

while :; do
    declare prefix="${words[$(get_random_word_index)]}"
    declare suffix="${words[$(get_random_word_index)]}"

    if [ "$prefix" != "$suffix" ] && ! [[ "${prefix_words[*]}" =~ $suffix ]]; then
        echo "${prefix}${suffix}"

        break
    fi
done
