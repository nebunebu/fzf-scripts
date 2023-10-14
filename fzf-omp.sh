#!/bin/env zsh

THEME_DIR="${XDG_CACHE_HOME}/oh-my-posh/themes/"
SELECTED=$(ls ${THEME_DIR} | fzf)

sed -i "s|\$(oh-my-posh init zsh --config .*)|\$(oh-my-posh init zsh --config ${THEME_DIR}${SELECTED})|" "${HOME}/.zshrc"

echo -e "\t\t\033[1mRELOAD .zshrc\033[0m"
