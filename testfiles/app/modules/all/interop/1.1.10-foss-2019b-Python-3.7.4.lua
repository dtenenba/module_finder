help([==[

Description
===========
The Illumina InterOp libraries are a set of common routines used for reading InterOp metric files produced by Illumina sequencers including NextSeq 1k/2k. These libraries are backwards compatible and capable of supporting prior releases of the software, with one exception: GA systems have been excluded.


More information
================
 - Homepage: https://github.com/Illumina/interop
]==])

whatis([==[Description: The Illumina InterOp libraries are a set of common routines used for reading InterOp metric files produced by Illumina sequencers including NextSeq 1k/2k. These libraries are backwards compatible and capable of supporting prior releases of the software, with one exception: GA systems have been excluded.]==])
whatis([==[Homepage: https://github.com/Illumina/interop]==])
whatis([==[URL: https://github.com/Illumina/interop]==])

local root = "/app/software/interop/1.1.10-foss-2019b-Python-3.7.4"

conflict("interop")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2020.04-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2020.04-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTINTEROP", root)
setenv("EBVERSIONINTEROP", "1.1.10")
setenv("EBDEVELINTEROP", pathJoin(root, "logs/interop-1.1.10-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
