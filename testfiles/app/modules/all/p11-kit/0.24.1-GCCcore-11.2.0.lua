help([==[

Description
===========
Provides a way to load and enumerate PKCS#11 modules.
 Provides a standard configuration setup for installing
 PKCS#11 modules in such a way that they're discoverable.
 Also solves problems with coordinating the use of PKCS#11
 by different components or libraries living in the same process.


More information
================
 - Homepage: https://p11-glue.freedesktop.org/p11-kit.html
]==])

whatis([==[Description: Provides a way to load and enumerate PKCS#11 modules.
 Provides a standard configuration setup for installing
 PKCS#11 modules in such a way that they're discoverable.
 Also solves problems with coordinating the use of PKCS#11
 by different components or libraries living in the same process.]==])
whatis([==[Homepage: https://p11-glue.freedesktop.org/p11-kit.html]==])
whatis([==[URL: https://p11-glue.freedesktop.org/p11-kit.html]==])

local root = "/app/software/p11-kit/0.24.1-GCCcore-11.2.0"

conflict("p11-kit")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("pkgconf/1.8.0-GCCcore-11.2.0") ) then
    load("pkgconf/1.8.0-GCCcore-11.2.0")
end

if not ( isloaded("libtasn1/4.18.0-GCCcore-11.2.0") ) then
    load("libtasn1/4.18.0-GCCcore-11.2.0")
end

if not ( isloaded("libffi/3.4.2-GCCcore-11.2.0") ) then
    load("libffi/3.4.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTP11MINKIT", root)
setenv("EBVERSIONP11MINKIT", "0.24.1")
setenv("EBDEVELP11MINKIT", pathJoin(root, "logs/p11-kit-0.24.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.2
