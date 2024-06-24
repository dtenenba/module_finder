help([==[

Description
===========
Graphviz is open source graph visualization software. Graph visualization
 is a way of representing structural information as diagrams of
 abstract graphs and networks. It has important applications in networking,
 bioinformatics,  software engineering, database and web design, machine learning,
 and in visual interfaces for other technical domains.


More information
================
 - Homepage: https://www.graphviz.org/
]==])

whatis([==[Description: Graphviz is open source graph visualization software. Graph visualization
 is a way of representing structural information as diagrams of
 abstract graphs and networks. It has important applications in networking,
 bioinformatics,  software engineering, database and web design, machine learning,
 and in visual interfaces for other technical domains.]==])
whatis([==[Homepage: https://www.graphviz.org/]==])
whatis([==[URL: https://www.graphviz.org/]==])

local root = "/app/software/Graphviz/8.1.0-GCCcore-12.3.0"

conflict("Graphviz")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("FriBidi/1.0.12-GCCcore-12.3.0") ) then
    load("FriBidi/1.0.12-GCCcore-12.3.0")
end

if not ( isloaded("Gdk-Pixbuf/2.42.10-GCCcore-12.3.0") ) then
    load("Gdk-Pixbuf/2.42.10-GCCcore-12.3.0")
end

if not ( isloaded("Ghostscript/10.01.2-GCCcore-12.3.0") ) then
    load("Ghostscript/10.01.2-GCCcore-12.3.0")
end

if not ( isloaded("GTS/0.7.6-GCCcore-12.3.0") ) then
    load("GTS/0.7.6-GCCcore-12.3.0")
end

if not ( isloaded("libgd/2.3.3-GCCcore-12.3.0") ) then
    load("libgd/2.3.3-GCCcore-12.3.0")
end

if not ( isloaded("Pango/1.50.14-GCCcore-12.3.0") ) then
    load("Pango/1.50.14-GCCcore-12.3.0")
end

if not ( isloaded("Perl/5.36.1-GCCcore-12.3.0") ) then
    load("Perl/5.36.1-GCCcore-12.3.0")
end

if not ( isloaded("Qt5/5.15.10-GCCcore-12.3.0") ) then
    load("Qt5/5.15.10-GCCcore-12.3.0")
end

if not ( isloaded("Tcl/8.6.13-GCCcore-12.3.0") ) then
    load("Tcl/8.6.13-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.3.0") ) then
    load("bzip2/1.0.8-GCCcore-12.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.5.1-GCCcore-12.3.0") ) then
    load("libjpeg-turbo/2.1.5.1-GCCcore-12.3.0")
end

if not ( isloaded("expat/2.5.0-GCCcore-12.3.0") ) then
    load("expat/2.5.0-GCCcore-12.3.0")
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
setenv("EBVERSIONGRAPHVIZ", "8.1.0")
setenv("EBDEVELGRAPHVIZ", pathJoin(root, "logs/Graphviz-8.1.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("CLASSPATH", pathJoin(root, "lib/graphviz/java"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/graphviz/java"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/graphviz/python3"))
prepend_path("TCLLIBPATH", pathJoin(root, "lib/graphviz/tcl"))
-- Built with EasyBuild version 4.9.0
