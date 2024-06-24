help([==[

Description
===========
A parallel, multi-engine simulator for heterogeneous swarm robotics


More information
================
 - Homepage: http://www.argos-sim.info
]==])

whatis([==[Description: A parallel, multi-engine simulator for heterogeneous swarm robotics]==])
whatis([==[Homepage: http://www.argos-sim.info]==])
whatis([==[URL: http://www.argos-sim.info]==])

local root = "/app/software/ARGoS/3.0.0-beta59-GCC-11.2.0"

conflict("ARGoS")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Lua/5.4.3-GCCcore-11.2.0") ) then
    load("Lua/5.4.3-GCCcore-11.2.0")
end

if not ( isloaded("FreeImage/3.18.0-GCCcore-11.2.0") ) then
    load("FreeImage/3.18.0-GCCcore-11.2.0")
end

if not ( isloaded("Qt5/5.15.2-GCCcore-11.2.0") ) then
    load("Qt5/5.15.2-GCCcore-11.2.0")
end

if not ( isloaded("freeglut/3.2.1-GCCcore-11.2.0") ) then
    load("freeglut/3.2.1-GCCcore-11.2.0")
end

if not ( isloaded("motif/2.3.8-GCCcore-11.2.0") ) then
    load("motif/2.3.8-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARGOS", root)
setenv("EBVERSIONARGOS", "3.0.0-beta59")
setenv("EBDEVELARGOS", pathJoin(root, "logs/ARGoS-3.0.0-beta59-GCC-11.2.0-easybuild-devel"))

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/argos3"))
-- Built with EasyBuild version 4.5.4
