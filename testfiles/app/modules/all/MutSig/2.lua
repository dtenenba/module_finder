help([==[

Description
===========
MutSig stands for "Mutation Significance".  MutSig analyzes lists of mutations
 discovered in DNA sequencing, to identify genes that were mutated more often than expected by
 chance given background mutation processes.


More information
================
 - Homepage: http://software.broadinstitute.org/cancer/cga/mutsig
]==])

whatis([==[Description: MutSig stands for "Mutation Significance".  MutSig analyzes lists of mutations
 discovered in DNA sequencing, to identify genes that were mutated more often than expected by
 chance given background mutation processes.]==])
whatis([==[Homepage: http://software.broadinstitute.org/cancer/cga/mutsig]==])
whatis([==[URL: http://software.broadinstitute.org/cancer/cga/mutsig]==])

local root = "/app/software/MutSig/2"

conflict("MutSig")

if not ( isloaded("MCR/R2013a") ) then
    load("MCR/R2013a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTMUTSIG", root)
setenv("EBVERSIONMUTSIG", "2")
setenv("EBDEVELMUTSIG", pathJoin(root, "logs/MutSig-2-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.2
