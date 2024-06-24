help([==[

Description
===========
Program for finding CTFs of electron micrographs.

Static Binary

More information
================
 - Homepage: https://grigoriefflab.umassmed.edu/ctffind4
]==])

whatis([==[Description: Program for finding CTFs of electron micrographs.]==])
whatis([==[Homepage: https://grigoriefflab.umassmed.edu/ctffind4]==])
whatis([==[URL: https://grigoriefflab.umassmed.edu/ctffind4]==])

local root = "/app/lib/ctffind/ctffind-4.1.14"

conflict("ctffind")

prepend_path("PATH", pathJoin(root, "bin"))

-- Built by hand with VIM by John Dey - June 2021
