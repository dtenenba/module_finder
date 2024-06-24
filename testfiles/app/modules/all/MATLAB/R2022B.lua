help([==[

Description
===========
MATLAB is a multi-paradigm numerical computing environment and
 proprietary programming language developed by MathWorks. MATLAB allows matrix
 manipulations, plotting of functions and data, implementation of algorithms,
 creation of user interfaces, and interfacing with programs written in other languages,
 including C, C++, C#, Java, Fortran and Python.


More information
================
 - Homepage: http://www.mathworks.com/products/matlab
]==])

whatis([==[Description: MATLAB is a multi-paradigm numerical computing environment and
 proprietary programming language developed by MathWorks. MATLAB allows matrix
 manipulations, plotting of functions and data, implementation of algorithms,
 creation of user interfaces, and interfacing with programs written in other languages,
 including C, C++, C#, Java, Fortran and Python.
]==])
whatis([==[Homepage: http://www.mathworks.com/products/matlab]==])

local root = "/app/software/MATLAB/R2022B"

conflict("MATLAB")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("PATH", pathJoin(root, "bin"))

-- hand-built with vim! 
