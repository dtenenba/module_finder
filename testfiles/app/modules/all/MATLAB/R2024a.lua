help([==[

Description
===========
MATLAB is a high-level language and interactive environment
 that enables you to perform computationally intensive tasks faster than with
 traditional programming languages such as C, C++, and Fortran.


More information
================
 - Homepage: https://www.mathworks.com/products/matlab
]==])

whatis([==[Description: MATLAB is a high-level language and interactive environment
 that enables you to perform computationally intensive tasks faster than with
 traditional programming languages such as C, C++, and Fortran.]==])
whatis([==[Homepage: https://www.mathworks.com/products/matlab]==])
whatis([==[URL: https://www.mathworks.com/products/matlab]==])

local root = "/app/software/MATLAB/2024a"

conflict("MATLAB")

-- provide libgtk-x11-2.0.so.0
if not ( isloaded("GTK+/2.24.32-foss-2019b") ) then
	load("GTK+/2.24.32-foss-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMATLAB", root)
setenv("EBVERSIONMATLAB", "2024a")
setenv("EBDEVELMATLAB", pathJoin(root, "logs/MATLAB-2024a-easybuild-devel"))

prepend_path("PATH", root)
setenv("_JAVA_OPTIONS", "-Xmx2048m")
-- Built with EasyBuild version 4.9.1
