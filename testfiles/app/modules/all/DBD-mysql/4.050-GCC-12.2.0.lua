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

local root = "/app/software/DBD-mysql/4.050-GCC-12.2.0"

conflict("DBD-mysql")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("Perl/5.36.0-GCCcore-12.2.0") ) then
    load("Perl/5.36.0-GCCcore-12.2.0")
end

if not ( isloaded("MariaDB/10.11.2-GCC-12.2.0") ) then
    load("MariaDB/10.11.2-GCC-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.36.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.36.0"))
setenv("EBROOTDBDMINMYSQL", root)
setenv("EBVERSIONDBDMINMYSQL", "4.050")
setenv("EBDEVELDBDMINMYSQL", pathJoin(root, "logs/DBD-mysql-4.050-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
