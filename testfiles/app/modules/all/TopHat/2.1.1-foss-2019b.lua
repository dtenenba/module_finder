help([==[

Description
===========
TopHat is a fast splice junction mapper for RNA-Seq reads.


More information
================
 - Homepage: http://ccb.jhu.edu/software/tophat/
]==])

whatis([==[Description: TopHat is a fast splice junction mapper for RNA-Seq reads.]==])
whatis([==[Homepage: http://ccb.jhu.edu/software/tophat/]==])
whatis([==[URL: http://ccb.jhu.edu/software/tophat/]==])

local root = "/app/software/TopHat/2.1.1-foss-2019b"

conflict("TopHat")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Boost/1.69.0-foss-2019b") ) then
    load("Boost/1.69.0-foss-2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTOPHAT", root)
setenv("EBVERSIONTOPHAT", "2.1.1")
setenv("EBDEVELTOPHAT", pathJoin(root, "logs/TopHat-2.1.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
