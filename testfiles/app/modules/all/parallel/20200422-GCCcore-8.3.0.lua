help([==[

Description
===========
parallel: Build and execute shell commands in parallel


More information
================
 - Homepage: http://savannah.gnu.org/projects/parallel/
]==])

whatis([==[Description: parallel: Build and execute shell commands in parallel]==])
whatis([==[Homepage: http://savannah.gnu.org/projects/parallel/]==])
whatis([==[URL: http://savannah.gnu.org/projects/parallel/]==])

local root = "/app/software/parallel/20200422-GCCcore-8.3.0"

conflict("parallel")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPARALLEL", root)
setenv("EBVERSIONPARALLEL", "20200422")
setenv("EBDEVELPARALLEL", pathJoin(root, "logs/parallel-20200422-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
