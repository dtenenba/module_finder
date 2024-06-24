help([==[

Description
===========
Perl5 access to Berkeley DB version 1.x.


More information
================
 - Homepage: https://perldoc.perl.org/DB_File.html
]==])

whatis([==[Description: Perl5 access to Berkeley DB version 1.x.]==])
whatis([==[Homepage: https://perldoc.perl.org/DB_File.html]==])
whatis([==[URL: https://perldoc.perl.org/DB_File.html]==])

local root = "/app/software/DB_File/1.855-GCCcore-10.2.0"

conflict("DB_File")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("DB/18.1.40-GCCcore-10.2.0") ) then
    load("DB/18.1.40-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0"))
setenv("EBROOTDB_FILE", root)
setenv("EBVERSIONDB_FILE", "1.855")
setenv("EBDEVELDB_FILE", pathJoin(root, "logs/DB_File-1.855-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
