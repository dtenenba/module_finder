help([==[

Description
===========
MUSCLE is one of the best-performing multiple alignment programs
 according to published benchmark tests, with accuracy and speed that are consistently
 better than CLUSTALW. MUSCLE can align hundreds of sequences in seconds. Most users
 learn everything they need to know about MUSCLE in a few minutes-only a handful of
 command-line options are needed to perform common alignment tasks.


More information
================
 - Homepage: https://drive5.com/muscle/
]==])

whatis([==[Description: MUSCLE is one of the best-performing multiple alignment programs
 according to published benchmark tests, with accuracy and speed that are consistently
 better than CLUSTALW. MUSCLE can align hundreds of sequences in seconds. Most users
 learn everything they need to know about MUSCLE in a few minutes-only a handful of
 command-line options are needed to perform common alignment tasks.]==])
whatis([==[Homepage: https://drive5.com/muscle/]==])
whatis([==[URL: https://drive5.com/muscle/]==])

local root = "/app/software/MUSCLE/5.1.0-GCCcore-12.3.0"

conflict("MUSCLE")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMUSCLE", root)
setenv("EBVERSIONMUSCLE", "5.1.0")
setenv("EBDEVELMUSCLE", pathJoin(root, "logs/MUSCLE-5.1.0-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
