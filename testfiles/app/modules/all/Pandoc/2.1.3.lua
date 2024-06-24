help([==[

Description
===========
If you need to convert files from one markup format into another, pandoc is your swiss-army knife


More information
================
 - Homepage: http://pandoc.org
]==])

whatis([==[Description: If you need to convert files from one markup format into another, pandoc is your swiss-army knife]==])
whatis([==[Homepage: http://pandoc.org]==])

local root = "/app/software/Pandoc/2.1.3"

conflict("Pandoc")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPANDOC", root)
setenv("EBVERSIONPANDOC", "2.1.3")
setenv("EBDEVELPANDOC", pathJoin(root, "/app/logs/Pandoc-2.1.3-easybuild-devel"))

-- Built with EasyBuild version 3.9.0
