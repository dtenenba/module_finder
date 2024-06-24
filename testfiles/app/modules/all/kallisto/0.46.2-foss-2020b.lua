help([==[

Description
===========
kallisto is a program for quantifying abundances of transcripts from RNA-Seq data, or more generally
 of target sequences using high-throughput sequencing reads.


More information
================
 - Homepage: https://pachterlab.github.io/kallisto/
]==])

whatis([==[Description: kallisto is a program for quantifying abundances of transcripts from RNA-Seq data, or more generally
 of target sequences using high-throughput sequencing reads.]==])
whatis([==[Homepage: https://pachterlab.github.io/kallisto/]==])
whatis([==[URL: https://pachterlab.github.io/kallisto/]==])

local root = "/app/software/kallisto/0.46.2-foss-2020b"

conflict("kallisto")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("HDF5/1.10.7-gompi-2020b") ) then
    load("HDF5/1.10.7-gompi-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKALLISTO", root)
setenv("EBVERSIONKALLISTO", "0.46.2")
setenv("EBDEVELKALLISTO", pathJoin(root, "logs/kallisto-0.46.2-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
