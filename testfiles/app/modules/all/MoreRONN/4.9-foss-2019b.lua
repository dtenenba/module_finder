help([==[

Description
===========
MoreRONN is the spiritual successor of RONN and is useful for surveying disorder in proteins as well as designing expressible constructs for X-ray crystallography.


More information
================
 - Homepage: https://github.com/varun-ramraj/MoreRONN
]==])

whatis([==[Description: MoreRONN is the spiritual successor of RONN and is useful for surveying disorder in proteins as well as designing expressible constructs for X-ray crystallography.]==])
whatis([==[Homepage: https://github.com/varun-ramraj/MoreRONN]==])
whatis([==[URL: https://github.com/varun-ramraj/MoreRONN]==])

local root = "/app/software/MoreRONN/4.9-foss-2019b"

conflict("MoreRONN")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMORERONN", root)
setenv("EBVERSIONMORERONN", "4.9")
setenv("EBDEVELMORERONN", pathJoin(root, "logs/MoreRONN-4.9-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
