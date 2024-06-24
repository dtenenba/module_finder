help([==[

Description
===========
Flex (Fast Lexical Analyzer) is a tool for generating scanners. A scanner,
 sometimes called a tokenizer, is a program which recognizes lexical patterns in text.


More information
================
 - Homepage: http://flex.sourceforge.net/
]==])

whatis([==[Description: Flex (Fast Lexical Analyzer) is a tool for generating scanners. A scanner,
 sometimes called a tokenizer, is a program which recognizes lexical patterns in text.]==])
whatis([==[Homepage: http://flex.sourceforge.net/]==])
whatis([==[URL: http://flex.sourceforge.net/]==])

local root = "/app/software/flex/2.5.39"

conflict("flex")

if not ( isloaded("M4/1.4.17") ) then
    load("M4/1.4.17")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFLEX", root)
setenv("EBVERSIONFLEX", "2.5.39")
setenv("EBDEVELFLEX", pathJoin(root, "logs/flex-2.5.39-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
