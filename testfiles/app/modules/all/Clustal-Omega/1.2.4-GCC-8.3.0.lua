help([==[

Description
===========
Clustal Omega is a multiple sequence alignment
 program for proteins. It produces biologically meaningful multiple
 sequence alignments of divergent sequences. Evolutionary relationships
 can be seen via viewing Cladograms or Phylograms


More information
================
 - Homepage: http://www.clustal.org/omega/
]==])

whatis([==[Description:  Clustal Omega is a multiple sequence alignment
 program for proteins. It produces biologically meaningful multiple
 sequence alignments of divergent sequences. Evolutionary relationships
 can be seen via viewing Cladograms or Phylograms ]==])
whatis([==[Homepage: http://www.clustal.org/omega/]==])
whatis([==[URL: http://www.clustal.org/omega/]==])

local root = "/app/software/Clustal-Omega/1.2.4-GCC-8.3.0"

conflict("Clustal-Omega")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("argtable/2.13-GCCcore-8.3.0") ) then
    load("argtable/2.13-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLUSTALMINOMEGA", root)
setenv("EBVERSIONCLUSTALMINOMEGA", "1.2.4")
setenv("EBDEVELCLUSTALMINOMEGA", pathJoin(root, "logs/Clustal-Omega-1.2.4-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
