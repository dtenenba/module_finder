help([==[

Description
===========
The SRA Toolkit, and the source-code SRA System Development
 Kit (SDK), will allow you to programmatically access data housed within SRA
 and convert it from the SRA format


More information
================
 - Homepage: https://www.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=software
]==])

whatis([==[Description: The SRA Toolkit, and the source-code SRA System Development
 Kit (SDK), will allow you to programmatically access data housed within SRA
 and convert it from the SRA format]==])
whatis([==[Homepage: https://www.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=software]==])
whatis([==[URL: https://www.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=software]==])

local root = "/app/software/SRA-Toolkit/3.0.0-ubuntu64"

conflict("SRA-Toolkit")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSRAMINTOOLKIT", root)
setenv("EBVERSIONSRAMINTOOLKIT", "3.0.0")
setenv("EBDEVELSRAMINTOOLKIT", pathJoin(root, "logs/SRA-Toolkit-3.0.0-ubuntu64-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.6.2
