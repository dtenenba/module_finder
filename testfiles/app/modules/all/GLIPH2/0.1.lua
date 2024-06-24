help([==[

Description
===========
GLIPH 2 clusters TCRs that are predicted to bind the same MHC-restricted peptide antigen.

More information
================
 - Homepage: http://50.255.35.37:8080/ 
 ]==])

whatis([==[Description: GLIPH 2 clusters TCRs that are predicted to bind the same MHC-restricted peptide antigen.]==])
whatis([==[Homepage: http://50.255.35.37:8080  ]==])

local root = "/app/lib/GLIPH2/0.1"

conflict("GLIPH2")

append_path("PATH",  root)

-- hand Built with vi by John Dey
--
