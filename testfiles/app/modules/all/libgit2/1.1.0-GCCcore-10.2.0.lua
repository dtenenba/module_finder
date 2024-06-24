help([==[

Description
===========
libgit2 is a portable, pure C implementation of the Git core methods provided as a re-entrant
linkable library with a solid API, allowing you to write native speed custom Git applications in any language
which supports C bindings.


More information
================
 - Homepage: https://libgit2.org/
]==])

whatis([==[Description: libgit2 is a portable, pure C implementation of the Git core methods provided as a re-entrant
linkable library with a solid API, allowing you to write native speed custom Git applications in any language
which supports C bindings.]==])
whatis([==[Homepage: https://libgit2.org/]==])
whatis([==[URL: https://libgit2.org/]==])

local root = "/app/software/libgit2/1.1.0-GCCcore-10.2.0"

conflict("libgit2")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("PCRE2/10.35-GCCcore-10.2.0") ) then
    load("PCRE2/10.35-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGIT2", root)
setenv("EBVERSIONLIBGIT2", "1.1.0")
setenv("EBDEVELLIBGIT2", pathJoin(root, "logs/libgit2-1.1.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
