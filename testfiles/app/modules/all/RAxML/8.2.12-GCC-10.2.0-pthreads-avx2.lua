help([==[

Description
===========
RAxML search algorithm for maximum likelihood based inference of phylogenetic trees.


More information
================
 - Homepage: https://github.com/stamatak/standard-RAxML
]==])

whatis([==[Description: RAxML search algorithm for maximum likelihood based inference of phylogenetic trees.]==])
whatis([==[Homepage: https://github.com/stamatak/standard-RAxML]==])
whatis([==[URL: https://github.com/stamatak/standard-RAxML]==])

local root = "/app/software/RAxML/8.2.12-GCC-10.2.0-pthreads-avx2"

conflict("RAxML")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRAXML", root)
setenv("EBVERSIONRAXML", "8.2.12")
setenv("EBDEVELRAXML", pathJoin(root, "logs/RAxML-8.2.12-GCC-10.2.0-pthreads-avx2-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
