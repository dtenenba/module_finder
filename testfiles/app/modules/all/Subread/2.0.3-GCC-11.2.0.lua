help([==[

Description
===========
High performance read alignment, quantification and mutation discovery


More information
================
 - Homepage: http://subread.sourceforge.net/
]==])

whatis([==[Description: High performance read alignment, quantification and mutation discovery]==])
whatis([==[Homepage: http://subread.sourceforge.net/]==])
whatis([==[URL: http://subread.sourceforge.net/]==])

local root = "/app/software/Subread/2.0.3-GCC-11.2.0"

conflict("Subread")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSUBREAD", root)
setenv("EBVERSIONSUBREAD", "2.0.3")
setenv("EBDEVELSUBREAD", pathJoin(root, "logs/Subread-2.0.3-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
