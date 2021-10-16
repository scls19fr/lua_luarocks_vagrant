#!/bin/bash

LOCALE="en_GB.UTF.8"
HOSTNAME="lua.box"

LUA_VERSION="5.4.3"
LUAROCKS_VERSION="3.7.0"

# OS setup
touch .hushlogin
hostnamectl set-hostname $HOSTNAME && locale-gen $LOCALE

# OS packages update / install
apt-get update --fix-missing
apt-get install -q -y build-essential libreadline-dev unzip g++ make git curl vim

# Lang
## Lua
# apt-get install -q -y lua # lua package in this Linux distro may be outdated
# using Lua source instead
cd
curl -R -O http://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz
tar -zxf lua-$LUA_VERSION.tar.gz
rm -f lua-$LUA_VERSION.tar.gz
cd lua-$LUA_VERSION
make linux test
sudo make install
# rm -rf lua-$LUA_VERSION

## LuaRocks
cd
wget https://luarocks.org/releases/luarocks-$LUAROCKS_VERSION.tar.gz
tar zxpf luarocks-$LUAROCKS_VERSION.tar.gz
rm -f luarocks-$LUAROCKS_VERSION.tar.gz
cd luarocks-$LUAROCKS_VERSION
./configure --with-lua-include=/usr/local/include
make
sudo make install
# rm -rf lua-$LUAROCKS_VERSION
