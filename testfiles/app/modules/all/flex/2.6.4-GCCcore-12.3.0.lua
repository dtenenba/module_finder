help([==[

Description
===========
Flex (Fast Lexical Analyzer) is a tool for generating scanners. A scanner,
 sometimes called a tokenizer, is a program which recognizes lexical patterns
 in text.


More information
================
 - Homepage: https://github.com/westes/flex
]==])

whatis([==[Description: 
 Flex (Fast Lexical Analyzer) is a tool for generating scanners. A scanner,
 sometimes called a tokenizer, is a program which recognizes lexical patterns
 in text.
]==])
whatis([==[Homepage: https://github.com/westes/flex]==])
whatis([==[URL: https://github.com/westes/flex]==])

local root = "/app/software/flex/2.6.4-GCCcore-12.3.0"

conflict("flex")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("M4/1.4.19-GCCcore-12.3.0") ) then
    load("M4/1.4.19-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFLEX", root)
setenv("EBVERSIONFLEX", "2.6.4")
setenv("EBDEVELFLEX", pathJoin(root, "logs/flex-2.6.4-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
