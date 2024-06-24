help([==[

Description
===========
GNU gperf is a perfect hash function generator. For a given list of strings,
 it produces a hash function and hash table, in form of C or C++ code, for
 looking up a value depending on the input string. The hash function is
 perfect, which means that the hash table has no collisions, and the hash
 table lookup needs a single string comparison only.


More information
================
 - Homepage: https://www.gnu.org/software/gperf/
]==])

whatis([==[Description: 
 GNU gperf is a perfect hash function generator. For a given list of strings,
 it produces a hash function and hash table, in form of C or C++ code, for
 looking up a value depending on the input string. The hash function is
 perfect, which means that the hash table has no collisions, and the hash
 table lookup needs a single string comparison only.
]==])
whatis([==[Homepage: https://www.gnu.org/software/gperf/]==])
whatis([==[URL: https://www.gnu.org/software/gperf/]==])

local root = "/app/software/gperf/3.1-GCCcore-11.3.0"

conflict("gperf")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGPERF", root)
setenv("EBVERSIONGPERF", "3.1")
setenv("EBDEVELGPERF", pathJoin(root, "logs/gperf-3.1-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
