# Lua / LuaRocks dev environment using Vagrant

This [Vagrant](https://www.vagrantup.com/) configuration provide dev environment for [Lua](https://www.lua.org/) / [LuaRocks](https://luarocks.org/).

## Usage

The use of this project is very easy, just execute the following command (Vagrant need to be installed):

```bash
git clone https://github.com/scls19fr/lua_luarocks_vagrant
cd lua_luarocks_vagrant

# Starts and access VM
vagrant up # it may takes many time
vagrant ssh
```

The directory that map the host is `/srv/`

## Credits

This project was inspired by:
- https://github.com/gsdenys/lua-vagrant
- https://github.com/adlawson/vagrantfiles/tree/master/lua
