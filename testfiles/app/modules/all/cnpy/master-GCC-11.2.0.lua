help([==[

Description
===========
cnpy lets you read and write NumPy arrays saved as npy file formats in C++.


More information
================
 - Homepage: https://github.com/rogersce/cnpy
]==])

whatis([==[Description: cnpy lets you read and write NumPy arrays saved as npy file formats in C++.]==])
whatis([==[Homepage: https://github.com/rogersce/cnpy]==])
whatis([==[URL: https://github.com/rogersce/cnpy]==])

local root = "/app/software/cnpy/master-GCC-11.2.0"

conflict("cnpy")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCNPY", root)
setenv("EBVERSIONCNPY", "master")
setenv("EBDEVELCNPY", pathJoin(root, "logs/cnpy-master-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
