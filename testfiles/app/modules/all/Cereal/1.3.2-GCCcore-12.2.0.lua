help([==[

Description
===========
cereal is a header-only C++11 serialization library. cereal takes arbitrary data types and reversibly 
turns them into different representations, such as compact binary encodings, XML, or JSON. cereal was designed to be
fast, light-weight, and easy to extend - it has no external dependencies and can be easily bundled with other code or 
used standalone.


More information
================
 - Homepage: https://uscilab.github.io/cereal/
]==])

whatis([==[Description: cereal is a header-only C++11 serialization library. cereal takes arbitrary data types and reversibly 
turns them into different representations, such as compact binary encodings, XML, or JSON. cereal was designed to be
fast, light-weight, and easy to extend - it has no external dependencies and can be easily bundled with other code or 
used standalone.]==])
whatis([==[Homepage: https://uscilab.github.io/cereal/]==])
whatis([==[URL: https://uscilab.github.io/cereal/]==])

local root = "/app/software/Cereal/1.3.2-GCCcore-12.2.0"

conflict("Cereal")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTCEREAL", root)
setenv("EBVERSIONCEREAL", "1.3.2")
setenv("EBDEVELCEREAL", pathJoin(root, "logs/Cereal-1.3.2-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
