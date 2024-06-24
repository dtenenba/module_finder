help([==[

Description
===========
MutSig2CV analyzes somatic point mutations discovered in DNA sequencing, identifying
genes mutated more often than expected by chance given inferred background mutation processes.


More information
================
 - Homepage: https://github.com/getzlab/MutSig2CV 


Citation
=======
 - https://www.nature.com/articles/nature12912
]==])

whatis([==[Description: MutSig2CV analyzes somatic point mutations discovered in DNA sequencing,
identifying genes mutated more often than expected by chance given inferred background mutation processes. 
]==])
whatis([==[Homepage: https://github.com/getzlab/MutSig2CV]==])

local root = "/app/software/MutSig2CV/MutSig2CV-master"

conflict("MutSig2CV")

if not ( isloaded("MCR/R2013a") ) then
    load("MCR/R2013a")
end

prepend_path("PATH", pathJoin(root, "bin"))
-- hand-built -  with vim by John Dey Aug 30, 2022 
