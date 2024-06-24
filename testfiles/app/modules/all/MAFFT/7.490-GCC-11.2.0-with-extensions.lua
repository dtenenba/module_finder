help([==[

Description
===========
MAFFT is a multiple sequence alignment program for unix-like operating systems.
It offers a range of multiple alignment methods, L-INS-i (accurate; for alignment
of <∼200 sequences), FFT-NS-2 (fast; for alignment of <∼30,000 sequences), etc.


More information
================
 - Homepage: https://mafft.cbrc.jp/alignment/software/source.html
]==])

whatis([==[Description: MAFFT is a multiple sequence alignment program for unix-like operating systems.
It offers a range of multiple alignment methods, L-INS-i (accurate; for alignment
of <∼200 sequences), FFT-NS-2 (fast; for alignment of <∼30,000 sequences), etc.]==])
whatis([==[Homepage: https://mafft.cbrc.jp/alignment/software/source.html]==])
whatis([==[URL: https://mafft.cbrc.jp/alignment/software/source.html]==])

local root = "/app/software/MAFFT/7.490-GCC-11.2.0-with-extensions"

conflict("MAFFT")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMAFFT", root)
setenv("EBVERSIONMAFFT", "7.490")
setenv("EBDEVELMAFFT", pathJoin(root, "logs/MAFFT-7.490-GCC-11.2.0-with-extensions-easybuild-devel"))

prepend_path("MAFFT_BINARIES", pathJoin(root, "libexec/mafft"))
-- Built with EasyBuild version 4.7.2
