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

local root = "/app/software/philosopher/1.4.5"

conflict("philosopher")

setenv("EBROOTPHILOSOPHER", root)
setenv("EBVERSIONPHILOSOPHER", "1.4.5")
setenv("EBDEVELPHILOSOPHER", pathJoin(root, "/app/logs/philosopher-1.4.5-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.9.0
