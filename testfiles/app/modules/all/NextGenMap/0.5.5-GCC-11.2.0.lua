help([==[

Description
===========
NextGenMap is a flexible highly sensitive short read mapping tool that
 handles much higher mismatch rates than comparable algorithms while still outperforming
 them in terms of runtime.


More information
================
 - Homepage: http://cibiv.github.io/NextGenMap/
]==])

whatis([==[Description: NextGenMap is a flexible highly sensitive short read mapping tool that
 handles much higher mismatch rates than comparable algorithms while still outperforming
 them in terms of runtime.]==])
whatis([==[Homepage: http://cibiv.github.io/NextGenMap/]==])
whatis([==[URL: http://cibiv.github.io/NextGenMap/]==])

local root = "/app/software/NextGenMap/0.5.5-GCC-11.2.0"

conflict("NextGenMap")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("BamTools/2.5.2-GCC-11.2.0") ) then
    load("BamTools/2.5.2-GCC-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNEXTGENMAP", root)
setenv("EBVERSIONNEXTGENMAP", "0.5.5")
setenv("EBDEVELNEXTGENMAP", pathJoin(root, "logs/NextGenMap-0.5.5-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
