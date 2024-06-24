help([==[

Description
===========
QUAST evaluates genome assemblies by computing various metrics.
It works both with and without reference genomes. The tool accepts multiple
assemblies, thus is suitable for comparison.


More information
================
 - Homepage: https://github.com/ablab/quast


Included extensions
===================
QUAST-5.0.2, simplejson-3.17.2
]==])

whatis([==[Description: QUAST evaluates genome assemblies by computing various metrics.
It works both with and without reference genomes. The tool accepts multiple
assemblies, thus is suitable for comparison.]==])
whatis([==[Homepage: https://github.com/ablab/quast]==])
whatis([==[URL: https://github.com/ablab/quast]==])
whatis([==[Extensions: QUAST-5.0.2, simplejson-3.17.2]==])

local root = "/app/software/QUAST/5.0.2-foss-2020b"

conflict("QUAST")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-foss-2020b") ) then
    load("matplotlib/3.3.3-foss-2020b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTQUAST", root)
setenv("EBVERSIONQUAST", "5.0.2")
setenv("EBDEVELQUAST", pathJoin(root, "logs/QUAST-5.0.2-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.1
setenv("EBEXTSLISTQUAST", "simplejson-3.17.2,QUAST-5.0.2")
