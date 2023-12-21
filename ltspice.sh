#!/bin/sh

XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/ltspice"
if [ ! -d "$XDG_DATA_HOME"/wineprefixes/ltspice ] ; then
   mkdir -p "$XDG_DATA_HOME"/wineprefixes/ltspice
fi
if [ ! -d "$CONFIG_DIR" ]; then
   mkdir -p "$CONFIG_DIR"
   touch "$CONFIG_DIR"/LTspice.ini
fi
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/ltspice WINEARCH=win64
wine /usr/lib/wine/x86_64-windows/start.exe /unix /opt/ltspice/LTspice.exe -ini "$CONFIG_DIR"/LTspice.ini "$@"
