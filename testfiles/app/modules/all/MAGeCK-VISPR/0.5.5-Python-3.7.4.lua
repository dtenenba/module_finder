help([==[

Description
===========
MAGeCK-VISPR is a comprehensive quality control, analysis and visualization workflow for CRISPR/Cas9
  screens The workflow combines the MAGeCK algorithm to identify essential genes from CRISPR/Cas9 screens considering
  multiple conditions with VISPR to interactively explore results and quality control in a web-based frontend.


More information
================
 - Homepage: https://bitbucket.org/liulab/mageck-vispr/
]==])

whatis([==[Description: MAGeCK-VISPR is a comprehensive quality control, analysis and visualization workflow for CRISPR/Cas9
  screens The workflow combines the MAGeCK algorithm to identify essential genes from CRISPR/Cas9 screens considering
  multiple conditions with VISPR to interactively explore results and quality control in a web-based frontend.]==])
whatis([==[Homepage: https://bitbucket.org/liulab/mageck-vispr/]==])
whatis([==[URL: https://bitbucket.org/liulab/mageck-vispr/]==])

local root = "/app/software/MAGeCK-VISPR/0.5.5-Python-3.7.4"

conflict("MAGeCK-VISPR")

if not ( isloaded("Miniconda3/4.7.10") ) then
    load("Miniconda3/4.7.10")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMAGECKMINVISPR", root)
setenv("EBVERSIONMAGECKMINVISPR", "0.5.5")
setenv("EBDEVELMAGECKMINVISPR", pathJoin(root, "logs/MAGeCK-VISPR-0.5.5-Python-3.7.4-easybuild-devel"))

prepend_path("PATH", root)
setenv("CONDA_ENV", "/app/software/MAGeCK-VISPR/0.5.5-Python-3.7.4")
setenv("CONDA_PREFIX", "/app/software/MAGeCK-VISPR/0.5.5-Python-3.7.4")
setenv("CONDA_DEFAULT_ENV", "/app/software/MAGeCK-VISPR/0.5.5-Python-3.7.4")
-- Built with EasyBuild version 4.3.0
