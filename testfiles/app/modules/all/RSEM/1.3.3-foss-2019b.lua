help([==[

Description
===========
RNA-Seq by Expectation-Maximization


More information
================
 - Homepage: http://deweylab.github.io/RSEM/
]==])

whatis([==[Description: RNA-Seq by Expectation-Maximization]==])
whatis([==[Homepage: http://deweylab.github.io/RSEM/]==])
whatis([==[URL: http://deweylab.github.io/RSEM/]==])

local root = "/app/software/RSEM/1.3.3-foss-2019b"

conflict("RSEM")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSEM", root)
setenv("EBVERSIONRSEM", "1.3.3")
setenv("EBDEVELRSEM", pathJoin(root, "logs/RSEM-1.3.3-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
