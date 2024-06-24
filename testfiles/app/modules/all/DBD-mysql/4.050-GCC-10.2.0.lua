help([==[

Description
===========
Perl binding for MySQL


More information
================
 - Homepage: https://metacpan.org/pod/distribution/DBD-mysql/lib/DBD/mysql.pm
]==])

whatis([==[Description: Perl binding for MySQL]==])
whatis([==[Homepage: https://metacpan.org/pod/distribution/DBD-mysql/lib/DBD/mysql.pm]==])
whatis([==[URL: https://metacpan.org/pod/distribution/DBD-mysql/lib/DBD/mysql.pm]==])

local root = "/app/software/DBD-mysql/4.050-GCC-10.2.0"

conflict("DBD-mysql")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("MariaDB/10.5.8-GCC-10.2.0") ) then
    load("MariaDB/10.5.8-GCC-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0"))
setenv("EBROOTDBDMINMYSQL", root)
setenv("EBVERSIONDBDMINMYSQL", "4.050")
setenv("EBDEVELDBDMINMYSQL", pathJoin(root, "logs/DBD-mysql-4.050-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
