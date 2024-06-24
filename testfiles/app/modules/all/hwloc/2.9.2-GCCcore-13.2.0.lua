help([==[

Description
===========
The Portable Hardware Locality (hwloc) software package provides a portable
 abstraction (across OS, versions, architectures, ...) of the hierarchical
 topology of modern architectures, including NUMA memory nodes, sockets, shared
 caches, cores and simultaneous multithreading. It also gathers various system
 attributes such as cache and memory information as well as the locality of I/O
 devices such as network interfaces, InfiniBand HCAs or GPUs. It primarily
 aims at helping applications with gathering information about modern computing
 hardware so as to exploit it accordingly and efficiently.


More information
================
 - Homepage: https://www.open-mpi.org/projects/hwloc/
]==])

whatis([==[Description: 
 The Portable Hardware Locality (hwloc) software package provides a portable
 abstraction (across OS, versions, architectures, ...) of the hierarchical
 topology of modern architectures, including NUMA memory nodes, sockets, shared
 caches, cores and simultaneous multithreading. It also gathers various system
 attributes such as cache and memory information as well as the locality of I/O
 devices such as network interfaces, InfiniBand HCAs or GPUs. It primarily
 aims at helping applications with gathering information about modern computing
 hardware so as to exploit it accordingly and efficiently.
]==])
whatis([==[Homepage: https://www.open-mpi.org/projects/hwloc/]==])
whatis([==[URL: https://www.open-mpi.org/projects/hwloc/]==])

local root = "/app/software/hwloc/2.9.2-GCCcore-13.2.0"

conflict("hwloc")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("numactl/2.0.16-GCCcore-13.2.0") ) then
    load("numactl/2.0.16-GCCcore-13.2.0")
end

if not ( isloaded("libxml2/2.11.5-GCCcore-13.2.0") ) then
    load("libxml2/2.11.5-GCCcore-13.2.0")
end

if not ( isloaded("libpciaccess/0.17-GCCcore-13.2.0") ) then
    load("libpciaccess/0.17-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHWLOC", root)
setenv("EBVERSIONHWLOC", "2.9.2")
setenv("EBDEVELHWLOC", pathJoin(root, "logs/hwloc-2.9.2-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
