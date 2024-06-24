help([==[

Description
===========
Provide an interface to ZIP archive files.


More information
================
 - Homepage: https://metacpan.org/pod/Archive::Zip
]==])

whatis([==[Description: Provide an interface to ZIP archive files.]==])
whatis([==[Homepage: https://metacpan.org/pod/Archive::Zip]==])
whatis([==[URL: https://metacpan.org/pod/Archive::Zip]==])

local root = "/app/software/Archive-Zip/1.68-GCCcore-10.2.0"

conflict("Archive-Zip")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("UnZip/6.0-GCCcore-10.2.0") ) then
    load("UnZip/6.0-GCCcore-10.2.0")
end

if not ( isloaded("Zip/3.0-GCCcore-10.2.0") ) then
    load("Zip/3.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0"))
setenv("EBROOTARCHIVEMINZIP", root)
setenv("EBVERSIONARCHIVEMINZIP", "1.68")
setenv("EBDEVELARCHIVEMINZIP", pathJoin(root, "logs/Archive-Zip-1.68-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
