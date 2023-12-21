#!/bin/sh

export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}"/wineprefixes/ltspice WINEARCH=win64
wine hh /usr/share/doc/ltspice/ltspice.chm "$@"
