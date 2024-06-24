help([==[

Description
===========
IgBLAST faclilitates the analysis of immunoglobulin and T cell receptor variable domain sequences.


More information
================
 - Homepage: https://ncbi.github.io/igblast
]==])

whatis([==[Description: IgBLAST faclilitates the analysis of immunoglobulin and T cell receptor variable domain sequences.]==])
whatis([==[Homepage: https://ncbi.github.io/igblast]==])
whatis([==[URL: https://ncbi.github.io/igblast]==])

local root = "/app/software/IgBLAST/1.21.0-x64-linux"

conflict("IgBLAST")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTIGBLAST", root)
setenv("EBVERSIONIGBLAST", "1.21.0")
setenv("EBDEVELIGBLAST", pathJoin(root, "logs/IgBLAST-1.21.0-x64-linux-easybuild-devel"))

setenv("IGDATA", "/app/software/IgBLAST/1.21.0-x64-linux/internal_data")
-- Built with EasyBuild version 4.7.1
