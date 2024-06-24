help([==[

Description
===========
parallel: Build and execute shell commands in parallel


More information
================
 - Homepage: https://savannah.gnu.org/projects/parallel/
]==])

whatis([==[Description: parallel: Build and execute shell commands in parallel]==])
whatis([==[Homepage: https://savannah.gnu.org/projects/parallel/]==])
whatis([==[URL: https://savannah.gnu.org/projects/parallel/]==])

local root = "/app/software/parallel/20210322-GCCcore-10.2.0"

conflict("parallel")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPARALLEL", root)
setenv("EBVERSIONPARALLEL", "20210322")
setenv("EBDEVELPARALLEL", pathJoin(root, "logs/parallel-20210322-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
