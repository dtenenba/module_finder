help([==[

Description
===========
Philosopher provides easy access to third-party tools and custom algorithms
 allowing users to develop proteomics analysis, from Peptide Spectrum Matching to annotated
 protein reports. Philosopher is also tuned for Open Search analysis, providing a modified
 version of the prophets for peptide validation and protein inference. To this date, Philosopher
 is the only proteomics toolkit that allows you to process and analyze close and
 open search results.


More information
================
 - Homepage: https://github.com/Nesvilab/philosopher/wiki
]==])

whatis([==[Description: Philosopher provides easy access to third-party tools and custom algorithms
 allowing users to develop proteomics analysis, from Peptide Spectrum Matching to annotated
 protein reports. Philosopher is also tuned for Open Search analysis, providing a modified
 version of the prophets for peptide validation and protein inference. To this date, Philosopher
 is the only proteomics toolkit that allows you to process and analyze close and
 open search results.]==])
whatis([==[Homepage: https://github.com/Nesvilab/philosopher/wiki]==])
whatis([==[URL: https://github.com/Nesvilab/philosopher/wiki]==])

local root = "/app/software/philosopher/3.2.5"

conflict("philosopher")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPHILOSOPHER", root)
setenv("EBVERSIONPHILOSOPHER", "3.2.5")
setenv("EBDEVELPHILOSOPHER", pathJoin(root, "logs/philosopher-3.2.5-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
