help([==[

Description
===========
CD-HIT is a very widely used program for clustering and 
 comparing protein or nucleotide sequences.


More information
================
 - Homepage: http://weizhong-lab.ucsd.edu/cd-hit/
]==])

whatis([==[Description:  CD-HIT is a very widely used program for clustering and 
 comparing protein or nucleotide sequences.]==])
whatis([==[Homepage: http://weizhong-lab.ucsd.edu/cd-hit/]==])
whatis([==[URL: http://weizhong-lab.ucsd.edu/cd-hit/]==])

local root = "/app/software/CD-HIT/4.8.1-foss-2019b"

conflict("CD-HIT")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCDMINHIT", root)
setenv("EBVERSIONCDMINHIT", "4.8.1")
setenv("EBDEVELCDMINHIT", pathJoin(root, "logs/CD-HIT-4.8.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
