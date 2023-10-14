#!/bin/env bash

tac "${HOME}/.histfile" | fzf | wl-copy
