#!/bin/sh
printf '\033c\033]0;%s\a' SQLInjectionAttacks
base_path="$(dirname "$(realpath "$0")")"
"$base_path/SQLInjectionAttacksLinux.x86_64" "$@"
