help([==[

Description
===========
The SeqTools package contains three tools for visualising sequence alignments: Blixem, Dotter and Belvu.


More information
================
 - Homepage: http://www.sanger.ac.uk/science/tools/seqtools
]==])

whatis([==[Description: The SeqTools package contains three tools for visualising sequence alignments: Blixem, Dotter and Belvu.]==])
whatis([==[Homepage: http://www.sanger.ac.uk/science/tools/seqtools]==])
whatis([==[URL: http://www.sanger.ac.uk/science/tools/seqtools]==])

local root = "/app/software/seqtools/4.44.1-foss-2019b"

conflict("seqtools")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

if not ( isloaded("GLib/2.62.0-GCCcore-8.3.0") ) then
    load("GLib/2.62.0-GCCcore-8.3.0")
end

if not ( isloaded("GTK+/2.24.32-foss-2019b") ) then
    load("GTK+/2.24.32-foss-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSEQTOOLS", root)
setenv("EBVERSIONSEQTOOLS", "4.44.1")
setenv("EBDEVELSEQTOOLS", pathJoin(root, "logs/seqtools-4.44.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
