help([==[

Description
===========
SSW is a fast implementation of the Smith-Waterman algorithm, which uses the
 Single-Instruction Multiple-Data (SIMD) instructions to parallelize the algorithm at the
 instruction level. SSW library provides an API that can be flexibly used by programs written in
 C, C++ and other languages. We also provide a software that can do protein and genome alignment
 directly. Current version of our implementation is ~50 times faster than an ordinary
 Smith-Waterman. It can return the Smith-Waterman score, alignment location and traceback path
 (cigar) of the optimal alignment accurately; and return the sub-optimal alignment score and
 location heuristically.


More information
================
 - Homepage: https://github.com/mengyao/Complete-Striped-Smith-Waterman-Library
]==])

whatis([==[Description: SSW is a fast implementation of the Smith-Waterman algorithm, which uses the
 Single-Instruction Multiple-Data (SIMD) instructions to parallelize the algorithm at the
 instruction level. SSW library provides an API that can be flexibly used by programs written in
 C, C++ and other languages. We also provide a software that can do protein and genome alignment
 directly. Current version of our implementation is ~50 times faster than an ordinary
 Smith-Waterman. It can return the Smith-Waterman score, alignment location and traceback path
 (cigar) of the optimal alignment accurately; and return the sub-optimal alignment score and
 location heuristically.
]==])
whatis([==[Homepage: https://github.com/mengyao/Complete-Striped-Smith-Waterman-Library]==])
whatis([==[URL: https://github.com/mengyao/Complete-Striped-Smith-Waterman-Library]==])

local root = "/app/software/SSW/1.1-GCCcore-11.2.0"

conflict("SSW")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSSW", root)
setenv("EBVERSIONSSW", "1.1")
setenv("EBDEVELSSW", pathJoin(root, "logs/SSW-1.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
