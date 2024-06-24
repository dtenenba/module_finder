help([==[

Description
===========
Graphviz is open source graph visualization software. Graph
 visualization is a way of representing structural information as diagrams of
 abstract graphs and networks. It has important applications in networking,
 bioinformatics,  software engineering, database and web design, machine
 learning, and in visual interfaces for other technical domains.


More information
================
 - Homepage: http://www.graphviz.org/
]==])

whatis([==[Description: Graphviz is open source graph visualization software. Graph
 visualization is a way of representing structural information as diagrams of
 abstract graphs and networks. It has important applications in networking,
 bioinformatics,  software engineering, database and web design, machine
 learning, and in visual interfaces for other technical domains.]==])
whatis([==[Homepage: http://www.graphviz.org/]==])
whatis([==[URL: http://www.graphviz.org/]==])

local root = "/app/software/Graphviz/2.40.1-foss-2019b"

conflict("Graphviz")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("cairo/1.16.0-GCCcore-8.3.0") ) then
    load("cairo/1.16.0-GCCcore-8.3.0")
end

if not ( isloaded("expat/2.2.7-GCCcore-8.3.0") ) then
    load("expat/2.2.7-GCCcore-8.3.0")
end

if not ( isloaded("freetype/2.10.1-GCCcore-8.3.0") ) then
    load("freetype/2.10.1-GCCcore-8.3.0")
end

if not ( isloaded("fontconfig/2.13.1-GCCcore-8.3.0") ) then
    load("fontconfig/2.13.1-GCCcore-8.3.0")
end

if not ( isloaded("Ghostscript/9.50-GCCcore-8.3.0") ) then
    load("Ghostscript/9.50-GCCcore-8.3.0")
end

if not ( isloaded("GObject-Introspection/1.58.3-GCCcore-8.3.0-Python-2.7.16") ) then
    load("GObject-Introspection/1.58.3-GCCcore-8.3.0-Python-2.7.16")
end

if not ( isloaded("GTS/0.7.6-foss-2019b") ) then
    load("GTS/0.7.6-foss-2019b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("Pango/1.44.7-GCCcore-8.3.0") ) then
    load("Pango/1.44.7-GCCcore-8.3.0")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("Qt5/5.13.1-GCCcore-8.3.0") ) then
    load("Qt5/5.13.1-GCCcore-8.3.0")
end

if not ( isloaded("Tcl/8.6.9-GCCcore-8.3.0") ) then
    load("Tcl/8.6.9-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGRAPHVIZ", root)
setenv("EBVERSIONGRAPHVIZ", "2.40.1")
setenv("EBDEVELGRAPHVIZ", pathJoin(root, "logs/Graphviz-2.40.1-foss-2019b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/graphviz/python"))
prepend_path("CLASSPATH", pathJoin(root, "lib/graphviz/java/org/graphviz"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/graphviz/java"))
prepend_path("TCLLIBPATH", pathJoin(root, "lib/graphviz/tcl"))
-- Built with EasyBuild version 4.2.1
