#!/bin/env bash

SELECTED=$(curl cht.sh/:list | wofi -d)
kitty --title "cht.sh" bash -c "curl cht.sh/${SELECTED} | less -R"
