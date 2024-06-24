help([==[

Description
===========
RDFLib is a Python library for working with RDF, a simple yet powerful language
 for representing information.


More information
================
 - Homepage: https://github.com/RDFLib/rdflib


Included extensions
===================
isodate-0.6.0, rdflib-5.0.0
]==])

whatis([==[Description: RDFLib is a Python library for working with RDF, a simple yet powerful language
 for representing information.]==])
whatis([==[Homepage: https://github.com/RDFLib/rdflib]==])
whatis([==[URL: https://github.com/RDFLib/rdflib]==])
whatis([==[Extensions: isodate-0.6.0, rdflib-5.0.0]==])

local root = "/app/software/RDFlib/5.0.0-GCCcore-10.2.0"

conflict("RDFlib")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRDFLIB", root)
setenv("EBVERSIONRDFLIB", "5.0.0")
setenv("EBDEVELRDFLIB", pathJoin(root, "logs/RDFlib-5.0.0-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.2
setenv("EBEXTSLISTRDFLIB", "isodate-0.6.0,rdflib-5.0.0")
