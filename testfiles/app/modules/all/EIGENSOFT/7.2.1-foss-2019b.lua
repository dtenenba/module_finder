help([==[

Description
===========
The EIGENSOFT package combines functionality from our population genetics methods (Patterson et al. 
2006)  and our EIGENSTRAT stratification correction method (Price et al. 2006). The EIGENSTRAT method uses principal 
components  analysis to explicitly model ancestry differences between cases and controls along continuous axes of 
variation;  the resulting correction is specific to a candidate marker’s variation in frequency across ancestral 
populations,  minimizing spurious associations while maximizing power to detect true associations. The EIGENSOFT 
package has a built-in plotting script and supports multiple file formats and quantitative phenotypes.


More information
================
 - Homepage: https://www.hsph.harvard.edu/alkes-price/software/
]==])

whatis([==[Description: The EIGENSOFT package combines functionality from our population genetics methods (Patterson et al. 
2006)  and our EIGENSTRAT stratification correction method (Price et al. 2006). The EIGENSTRAT method uses principal 
components  analysis to explicitly model ancestry differences between cases and controls along continuous axes of 
variation;  the resulting correction is specific to a candidate marker’s variation in frequency across ancestral 
populations,  minimizing spurious associations while maximizing power to detect true associations. The EIGENSOFT 
package has a built-in plotting script and supports multiple file formats and quantitative phenotypes.]==])
whatis([==[Homepage: https://www.hsph.harvard.edu/alkes-price/software/]==])
whatis([==[URL: https://www.hsph.harvard.edu/alkes-price/software/]==])

local root = "/app/software/EIGENSOFT/7.2.1-foss-2019b"

conflict("EIGENSOFT")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("GSL/2.6-GCC-8.3.0") ) then
    load("GSL/2.6-GCC-8.3.0")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEIGENSOFT", root)
setenv("EBVERSIONEIGENSOFT", "7.2.1")
setenv("EBDEVELEIGENSOFT", pathJoin(root, "logs/EIGENSOFT-7.2.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
