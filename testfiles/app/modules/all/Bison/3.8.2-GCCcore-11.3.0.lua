help([==[

Description
===========
Bison is a general-purpose parser generator that converts an annotated context-free grammar
 into a deterministic LR or generalized LR (GLR) parser employing LALR(1) parser tables.


More information
================
 - Homepage: https://www.gnu.org/software/bison
]==])

whatis([==[Description: Bison is a general-purpose parser generator that converts an annotated context-free grammar
 into a deterministic LR or generalized LR (GLR) parser employing LALR(1) parser tables.]==])
whatis([==[Homepage: https://www.gnu.org/software/bison]==])
whatis([==[URL: https://www.gnu.org/software/bison]==])

local root = "/app/software/Bison/3.8.2-GCCcore-11.3.0"

conflict("Bison")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBISON", root)
setenv("EBVERSIONBISON", "3.8.2")
setenv("EBDEVELBISON", pathJoin(root, "logs/Bison-3.8.2-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
