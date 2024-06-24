help([==[

Description
===========
Gene Set Enrichment Analysis (GSEA) is a computational method that 
determines whether an a priori defined set of genes shows statistically
significant, concordant differences between two biological states
(e.g. phenotypes).


More information
================
 - Homepage: https://www.gsea-msigdb.org/gsea/index.jsp
]==])

whatis([==[Description:  Gene Set Enrichment Analysis (GSEA) is a computational method that 
determines whether an a priori defined set of genes shows statistically
significant, concordant differences between two biological states
(e.g. phenotypes). ]==])
whatis([==[Homepage: https://www.gsea-msigdb.org/gsea/index.jsp]==])
whatis([==[URL: https://www.gsea-msigdb.org/gsea/index.jsp]==])

local root = "/app/software/GSEA/4.3.2"

conflict("GSEA")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGSEA", root)
setenv("EBVERSIONGSEA", "4.3.2")
setenv("EBDEVELGSEA", pathJoin(root, "logs/GSEA-4.3.2-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.8.1
