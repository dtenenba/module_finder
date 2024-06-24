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
whatis([==[URL: http://pandoc.org]==])

local root = "/app/software/Pandoc/2.5"

conflict("Pandoc")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPANDOC", root)
setenv("EBVERSIONPANDOC", "2.5")
setenv("EBDEVELPANDOC", pathJoin(root, "logs/Pandoc-2.5-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
