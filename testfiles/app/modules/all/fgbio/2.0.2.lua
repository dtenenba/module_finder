help([==[

Description
===========
A set of tools to analyze genomic data with a focus on Next Generation Sequencing.


More information
================
 - Homepage: https://github.com/fulcrumgenomics/fgbio 
]==])

whatis([==[Description: A set of tools to analyze genomic data with a focus on Next Generation Sequencing.]==])
whatis([==[Homepage: https://github.com/fulcrumgenomics/fgbio]==])
whatis([==[URL:  https://github.com/fulcrumgenomics/fgbio]==])

local root = "/app/software/fgbio/2.0.2"

conflict("cromwell")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "cromwell.jar"))
setenv("FGBIO_HOME", root)

if mode() == "load" then
io.stderr:write([==[To execute fgbio, run: java -jar $FGBIO_HOME/fgbio.jar
]==])
end
-- hand-built with vim jfdey 2022.10.25 
