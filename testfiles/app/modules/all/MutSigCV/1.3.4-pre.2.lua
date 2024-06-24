help([==[

Description
===========
MutSig stands for "Mutation Significance".  MutSig analyzes lists of mutations
 discovered in DNA sequencing, to identify genes that were mutated more often than expected by
 chance given background mutation processes.


More information
================
 - Homepage: https://www.genepattern.org/modules/docs/MutSigCV 
]==])

whatis([==[Description: MutSigCV accepts whole genome or whole exome sequencing data
from multiple samples, with information about point mutations, small insertions/deletions,
and coverage, and identifies genes that are mutated more often than one would expect by chance.
]==])
whatis([==[Homepage: https://www.genepattern.org/modules/docs/MutSigCV]==])
whatis([==[URL: http://software.broadinstitute.org/cancer/cga/mutsig]==])
whatis([==[Source: https://github.com/genepattern/MutSigCV]==])

local root = "/app/lib/MutSigCV/MutSigCV-1.3.4-pre.2"

conflict("MutSigCV")

-- if not ( isloaded("MCR/R2013a") ) then
--     load("MCR/R2013a")
-- end

if not ( isloaded("MATLAB/R2014a") ) then
    load("MATLAB/R2014a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("MUTSIGCV_HOME", "/app/lib/MutSigCV/MutSigCV-1.3.4-pre.2")
setenv("EBVERSIONMUTSIGC", "2")
setenv("EBDEVELMUTSIG", pathJoin(root, "logs/MutSig-2-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "bin"))
-- Hand built with vi by John Dey Jan 5, 2021
