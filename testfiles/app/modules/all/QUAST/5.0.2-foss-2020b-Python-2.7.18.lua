help([==[

Description
===========
QUAST evaluates genome assemblies by computing various metrics.
It works both with and without reference genomes. The tool accepts multiple
assemblies, thus is suitable for comparison.


More information
================
 - Homepage: https://github.com/ablab/quast
]==])

whatis([==[Description: QUAST evaluates genome assemblies by computing various metrics.
It works both with and without reference genomes. The tool accepts multiple
assemblies, thus is suitable for comparison.]==])
whatis([==[Homepage: https://github.com/ablab/quast]==])
whatis([==[URL: https://github.com/ablab/quast]==])

local root = "/app/software/QUAST/5.0.2-foss-2020b-Python-2.7.18"

conflict("QUAST")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/2.7.18-GCCcore-10.2.0") ) then
    load("Python/2.7.18-GCCcore-10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("matplotlib/2.2.5-foss-2020b-Python-2.7.18") ) then
    load("matplotlib/2.2.5-foss-2020b-Python-2.7.18")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTQUAST", root)
setenv("EBVERSIONQUAST", "5.0.2")
setenv("EBDEVELQUAST", pathJoin(root, "logs/QUAST-5.0.2-foss-2020b-Python-2.7.18-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.4
