help([==[

Description
===========
The HH-suite is an open-source software package
 for sensitive protein sequence searching based on the pairwise
 alignment of hidden Markov models (HMMs).


More information
================
 - Homepage: https://github.com/soedinglab/hh-suite
]==])

whatis([==[Description: The HH-suite is an open-source software package
 for sensitive protein sequence searching based on the pairwise
 alignment of hidden Markov models (HMMs).]==])
whatis([==[Homepage: https://github.com/soedinglab/hh-suite]==])
whatis([==[URL: https://github.com/soedinglab/hh-suite]==])

local root = "/app/software/HH-suite/3.3.0-gompi-2021b"

conflict("HH-suite")

if not ( isloaded("gompi/2021b") ) then
    load("gompi/2021b")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHHMINSUITE", root)
setenv("EBVERSIONHHMINSUITE", "3.3.0")
setenv("EBDEVELHHMINSUITE", pathJoin(root, "logs/HH-suite-3.3.0-gompi-2021b-easybuild-devel"))

setenv("HHLIB", "/app/software/HH-suite/3.3.0-gompi-2021b")
prepend_path("PATH", pathJoin(root, "scripts"))
prepend_path("PERL5LIB", pathJoin(root, "scripts"))
-- Built with EasyBuild version 4.6.0
