#!/bin/sh

set -e

command_exists () {
    command -v "$1" >/dev/null 2>&1;
}

# cd to root
if [ -e ./scripts/lua-test.sh ]; then
    cd src/lua
fi

# ensure Lua is exist
command_exists lua || { echo >&2 "[ERROR] Require Lua but it's not installed."; exit 1; }

# ensure LuaRocks is exist
command_exists luarocks || { echo >&2 "[ERROR] Require LuaRocks but it's not installed."; exit 1; }

# ensure Busted is exist, otherwise install it
if ! command_exists busted; then
  if [ -e /usr/local/bin/docker-luarocks-install ]; then
    docker-luarocks-install busted
  elif command_exists luarocks; then
    luarocks install busted
  else
    echo Cannot install busted, please install manual.
  fi
fi

busted staircase.lua
