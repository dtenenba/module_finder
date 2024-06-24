help([==[

Description
===========
QIIME is an open-source bioinformatics pipeline for performing microbiome analysis
 from raw DNA sequencing data.


More information
================
 - Homepage: http://qiime2.org/
]==])

whatis([==[Description: QIIME is an open-source bioinformatics pipeline for performing microbiome analysis
 from raw DNA sequencing data.]==])
whatis([==[Homepage: http://qiime2.org/]==])
whatis([==[URL: http://qiime2.org/]==])

local root = "/app/software/QIIME2/2020.11"

conflict("QIIME2")

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTQIIME2", root)
setenv("EBVERSIONQIIME2", "2020.11")
setenv("EBDEVELQIIME2", pathJoin(root, "logs/QIIME2-2020.11-easybuild-devel"))

prepend_path("PATH", root)
setenv("CONDA_ENV", "/app/software/QIIME2/2020.11")
setenv("CONDA_PREFIX", "/app/software/QIIME2/2020.11")
setenv("CONDA_DEFAULT_ENV", "/app/software/QIIME2/2020.11")
-- Built with EasyBuild version 4.3.3
