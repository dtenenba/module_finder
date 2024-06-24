help([==[

Description
===========
The libffi library provides a portable, high level programming interface to
 various calling conventions. This allows a programmer to call any function
 specified by a call interface description at run-time.


More information
================
 - Homepage: https://sourceware.org/libffi/
]==])

whatis([==[Description: The libffi library provides a portable, high level programming interface to
 various calling conventions. This allows a programmer to call any function
 specified by a call interface description at run-time.]==])
whatis([==[Homepage: https://sourceware.org/libffi/]==])
whatis([==[URL: https://sourceware.org/libffi/]==])

local root = "/app/software/libffi/3.4.2-GCCcore-11.2.0"

conflict("libffi")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBFFI", root)
setenv("EBVERSIONLIBFFI", "3.4.2")
setenv("EBDEVELLIBFFI", pathJoin(root, "logs/libffi-3.4.2-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
