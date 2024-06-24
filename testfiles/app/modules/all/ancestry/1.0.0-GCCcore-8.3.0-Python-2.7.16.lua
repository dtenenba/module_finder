help([==[

Description
===========
Fast individual ancestry inference from DNA sequence data leveraging allele frequencies
 from multiple populations. iAdmix Using population allele frequencies for computing individual admixture
 estimates


More information
================
 - Homepage: https://github.com/vibansal
]==])

whatis([==[Description: Fast individual ancestry inference from DNA sequence data leveraging allele frequencies
 from multiple populations. iAdmix Using population allele frequencies for computing individual admixture
 estimates]==])
whatis([==[Homepage: https://github.com/vibansal]==])
whatis([==[URL: https://github.com/vibansal]==])

local root = "/app/software/ancestry/1.0.0-GCCcore-8.3.0-Python-2.7.16"

conflict("ancestry")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("binutils/2.32-GCCcore-8.3.0") ) then
    load("binutils/2.32-GCCcore-8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTANCESTRY", root)
setenv("EBVERSIONANCESTRY", "1.0.0")
setenv("EBDEVELANCESTRY", pathJoin(root, "logs/ancestry-1.0.0-GCCcore-8.3.0-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "bin"))
-- Built with EasyBuild version 4.3.1
