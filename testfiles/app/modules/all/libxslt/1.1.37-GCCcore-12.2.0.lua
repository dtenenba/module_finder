help([==[

Description
===========
Libxslt is the XSLT C library developed for the GNOME project
 (but usable outside of the Gnome platform).


More information
================
 - Homepage: http://xmlsoft.org/
]==])

whatis([==[Description: Libxslt is the XSLT C library developed for the GNOME project
 (but usable outside of the Gnome platform).]==])
whatis([==[Homepage: http://xmlsoft.org/]==])
whatis([==[URL: http://xmlsoft.org/]==])

local root = "/app/software/libxslt/1.1.37-GCCcore-12.2.0"

conflict("libxslt")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("libxml2/2.10.3-GCCcore-12.2.0") ) then
    load("libxml2/2.10.3-GCCcore-12.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBXSLT", root)
setenv("EBVERSIONLIBXSLT", "1.1.37")
setenv("EBDEVELLIBXSLT", pathJoin(root, "logs/libxslt-1.1.37-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
