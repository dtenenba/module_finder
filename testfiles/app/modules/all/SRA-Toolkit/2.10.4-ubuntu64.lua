help([==[

Description
===========
The NCBI SRA Toolkit enables reading (dumping) of sequencing files 
 from the SRA database and writing (loading) files into the .sra format


More information
================
 - Homepage: http://trace.ncbi.nlm.nih.gov/Traces/sra
]==])

whatis([==[Description: The NCBI SRA Toolkit enables reading (dumping) of sequencing files 
 from the SRA database and writing (loading) files into the .sra format ]==])
whatis([==[Homepage: http://trace.ncbi.nlm.nih.gov/Traces/sra]==])
whatis([==[URL: http://trace.ncbi.nlm.nih.gov/Traces/sra]==])

local root = "/app/software/SRA-Toolkit/2.10.4-ubuntu64"

conflict("SRA-Toolkit")

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSRAMINTOOLKIT", root)
setenv("EBVERSIONSRAMINTOOLKIT", "2.10.4")
setenv("EBDEVELSRAMINTOOLKIT", pathJoin(root, "logs/SRA-Toolkit-2.10.4-ubuntu64-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
