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

local root = "/app/software/Graphviz/2.47.0-GCCcore-10.2.0-Java-11"

conflict("Graphviz")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("FriBidi/1.0.10-GCCcore-10.2.0") ) then
    load("FriBidi/1.0.10-GCCcore-10.2.0")
end

if not ( isloaded("Gdk-Pixbuf/2.40.0-GCCcore-10.2.0") ) then
    load("Gdk-Pixbuf/2.40.0-GCCcore-10.2.0")
end

if not ( isloaded("Ghostscript/9.53.3-GCCcore-10.2.0") ) then
    load("Ghostscript/9.53.3-GCCcore-10.2.0")
end

if not ( isloaded("GTS/0.7.6-GCCcore-10.2.0") ) then
    load("GTS/0.7.6-GCCcore-10.2.0")
end

if not ( isloaded("libgd/2.3.0-GCCcore-10.2.0") ) then
    load("libgd/2.3.0-GCCcore-10.2.0")
end

if not ( isloaded("Pango/1.47.0-GCCcore-10.2.0") ) then
    load("Pango/1.47.0-GCCcore-10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("Qt5/5.14.2-GCCcore-10.2.0") ) then
    load("Qt5/5.14.2-GCCcore-10.2.0")
end

if not ( isloaded("Tcl/8.6.10-GCCcore-10.2.0") ) then
    load("Tcl/8.6.10-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
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
setenv("EBVERSIONGRAPHVIZ", "2.47.0")
setenv("EBDEVELGRAPHVIZ", pathJoin(root, "logs/Graphviz-2.47.0-GCCcore-10.2.0-Java-11-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/graphviz/python3"))
prepend_path("CLASSPATH", pathJoin(root, "lib/graphviz/java"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/graphviz/java"))
prepend_path("TCLLIBPATH", pathJoin(root, "lib/graphviz/tcl"))
-- Built with EasyBuild version 4.3.4
