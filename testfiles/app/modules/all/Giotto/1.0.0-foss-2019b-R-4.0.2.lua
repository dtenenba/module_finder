help([==[

Description
===========
The Giotto package consists of two modules, Giotto Analyzer and Viewer, which provide tools
 to process, analyze and visualize single-cell spatial expression data.


More information
================
 - Homepage: https://rubd.github.io/Giotto_site/


Included extensions
===================
ClusterR-1.2.2, ComplexHeatmap-2.4.3, dbscan-1.1-5, dqrng-0.2.1,
ggalluvial-0.12.2, ggdendro-0.1.22, Giotto-1.0.0, lfa-1.18.0, limma-3.44.3,
oro.nifti-0.11.0, qvalue-2.20.0, RcppAnnoy-0.0.16, RcppZiggurat-0.1.6,
Rfast-2.0.1, RNifti-1.2.3, RSpectra-0.16-0, sitmo-2.0.1, smfishH-0.1,
uwot-0.1.8
]==])

whatis([==[Description: The Giotto package consists of two modules, Giotto Analyzer and Viewer, which provide tools
 to process, analyze and visualize single-cell spatial expression data.]==])
whatis([==[Homepage: https://rubd.github.io/Giotto_site/]==])
whatis([==[URL: https://rubd.github.io/Giotto_site/]==])
whatis([==[Extensions: ClusterR-1.2.2, ComplexHeatmap-2.4.3, dbscan-1.1-5, dqrng-0.2.1, ggalluvial-0.12.2, ggdendro-0.1.22, Giotto-1.0.0, lfa-1.18.0, limma-3.44.3, oro.nifti-0.11.0, qvalue-2.20.0, RcppAnnoy-0.0.16, RcppZiggurat-0.1.6, Rfast-2.0.1, RNifti-1.2.3, RSpectra-0.16-0, sitmo-2.0.1, smfishH-0.1, uwot-0.1.8]==])

local root = "/app/software/Giotto/1.0.0-foss-2019b-R-4.0.2"

conflict("Giotto")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGIOTTO", root)
setenv("EBVERSIONGIOTTO", "1.0.0")
setenv("EBDEVELGIOTTO", pathJoin(root, "logs/Giotto-1.0.0-foss-2019b-R-4.0.2-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.3.0
setenv("EBEXTSLISTGIOTTO", "RcppAnnoy-0.0.16,sitmo-2.0.1,dqrng-0.2.1,RSpectra-0.16-0,uwot-0.1.8,dbscan-1.1-5,ggalluvial-0.12.2,ComplexHeatmap-2.4.3,qvalue-2.20.0,lfa-1.18.0,limma-3.44.3,ggdendro-0.1.22,RNifti-1.2.3,oro.nifti-0.11.0,smfishH-0.1,ClusterR-1.2.2,RcppZiggurat-0.1.6,Rfast-2.0.1,Giotto-1.0.0")
