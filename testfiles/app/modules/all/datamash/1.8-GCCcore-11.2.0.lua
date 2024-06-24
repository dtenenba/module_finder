help([==[

Description
===========
GNU datamash performs basic numeric, textual and statistical operations on input data files


More information
================
 - Homepage: https://www.gnu.org/software/datamash/
]==])

whatis([==[Description: GNU datamash performs basic numeric, textual and statistical operations on input data files]==])
whatis([==[Homepage: https://www.gnu.org/software/datamash/]==])
whatis([==[URL: https://www.gnu.org/software/datamash/]==])

local root = "/app/software/datamash/1.8-GCCcore-11.2.0"

conflict("datamash")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTDATAMASH", root)
setenv("EBVERSIONDATAMASH", "1.8")
setenv("EBDEVELDATAMASH", pathJoin(root, "logs/datamash-1.8-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
