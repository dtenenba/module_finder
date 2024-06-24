help([==[

Description
===========
The GNU Core Utilities are the basic file, shell and text manipulation utilities of the
 GNU operating system.  These are the core utilities which are expected to exist on every operating system.


More information
================
 - Homepage: http://www.gnu.org/software/coreutils/
]==])

whatis([==[Description: The GNU Core Utilities are the basic file, shell and text manipulation utilities of the
 GNU operating system.  These are the core utilities which are expected to exist on every operating system.
]==])
whatis([==[Homepage: http://www.gnu.org/software/coreutils/]==])
whatis([==[URL: http://www.gnu.org/software/coreutils/]==])

local root = "/app/software/Coreutils/8.32-GCCcore-8.3.0"

conflict("Coreutils")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCOREUTILS", root)
setenv("EBVERSIONCOREUTILS", "8.32")
setenv("EBDEVELCOREUTILS", pathJoin(root, "logs/Coreutils-8.32-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
