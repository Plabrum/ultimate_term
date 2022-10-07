#!/usr/bin/env zsh

RAINBOW=(
    "$(printf '\033[38;5;196m')"
    "$(printf '\033[38;5;202m')"
    "$(printf '\033[38;5;226m')"
    "$(printf '\033[38;5;082m')"
    "$(printf '\033[38;5;021m')"
    "$(printf '\033[38;5;093m')"
    "$(printf '\033[38;5;163m')"
    )

RED=$(printf '\033[31m')
GREEN=$(printf '\033[32m')
YELLOW=$(printf '\033[33m')
BLUE=$(printf '\033[34m')
BOLD=$(printf '\033[1m')
RESET=$(printf '\033[0m')


printf '%s Welcome to Walter %s\n' $GREEN $RESET

printf '%s  ___   ___ %s    ________ %s     ______  %s  ___   ___  %s   ________ %s  __     %s   __      %s\n' $RAINBOW $RESET
printf '%s /__/\ /__/\ %s  /_______/\ %s   /_____/\ %s /__/\ /__/\ %s  /_______/\%s /_/\    %s  /__/\     %s\n' $RAINBOW $RESET
printf '%s \::\ \\\  \ \ %s \__.::._\/ %s   \:::_ \ \ %s\::\ \\\  \ \ %s \__.::._\/ %s\:\ \    %s \.:\ \    %s\n' $RAINBOW $RESET
printf '%s  \::\/_\ .\ \ %s   \::\ \   %s   \:(_) \ \%s \::\/_\ .\ \ %s   \::\ \  %s \:\ \    %s \::\ \   %s\n' $RAINBOW $RESET
printf '%s   \:: ___::\ \ %s  _\::\ \__ %s   \: ___\/ %s \:: ___::\ \ %s  _\::\ \__ %s\:\ \____%s \__\/_  %s\n' $RAINBOW $RESET
printf '%s    \: \ \\\::\ \%s /__\::\__/\ %s   \ \ \   %s  \: \ \\\::\ \%s /__\::\__/\ %s\:\/___/\ %s /__/\ %s\n' $RAINBOW $RESET
printf '%s     \__\/ \::\/ %s\________\/  %s   \_\/   %s   \__\/ \::\/%s \________\/ %s \_____\/ %s \__\/ %s\n' $RAINBOW $RESET


