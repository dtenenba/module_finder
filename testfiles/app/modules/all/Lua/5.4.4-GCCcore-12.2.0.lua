help([==[

Description
===========
Lua is a powerful, fast, lightweight, embeddable scripting language.
 Lua combines simple procedural syntax with powerful data description constructs based
 on associative arrays and extensible semantics. Lua is dynamically typed,
 runs by interpreting bytecode for a register-based virtual machine,
 and has automatic memory management with incremental garbage collection,
 making it ideal for configuration, scripting, and rapid prototyping.


More information
================
 - Homepage: https://www.lua.org/
]==])

whatis([==[Description: Lua is a powerful, fast, lightweight, embeddable scripting language.
 Lua combines simple procedural syntax with powerful data description constructs based
 on associative arrays and extensible semantics. Lua is dynamically typed,
 runs by interpreting bytecode for a register-based virtual machine,
 and has automatic memory management with incremental garbage collection,
 making it ideal for configuration, scripting, and rapid prototyping.]==])
whatis([==[Homepage: https://www.lua.org/]==])
whatis([==[URL: https://www.lua.org/]==])

local root = "/app/software/Lua/5.4.4-GCCcore-12.2.0"

conflict("Lua")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("ncurses/6.3-GCCcore-12.2.0") ) then
    load("ncurses/6.3-GCCcore-12.2.0")
end

if not ( isloaded("libreadline/8.2-GCCcore-12.2.0") ) then
    load("libreadline/8.2-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLUA", root)
setenv("EBVERSIONLUA", "5.4.4")
setenv("EBDEVELLUA", pathJoin(root, "logs/Lua-5.4.4-GCCcore-12.2.0-easybuild-devel"))

setenv("LUA_DIR", "/app/software/Lua/5.4.4-GCCcore-12.2.0")
-- Built with EasyBuild version 4.7.2
