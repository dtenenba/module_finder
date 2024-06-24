help([==[

Description
===========
PATRIC is an integration of different types of data and software tools that support research on bacterial pathogens.


More information
================
 - Homepage: https://docs.patricbrc.org/cli_tutorial/index.html
]==])

whatis([==[Description: Read files using HTSlib including BAM/CRAM, Tabix and BCF database files]==])
whatis([==[Homepage: https://docs.patricbrc.org/cli_tutorial/index.html ]==])
whatis([==[URL: https://github.com/PATRIC3/PATRIC-distribution]==])

local root = "/app/software/PATRIC-cli/1.035-GCCcore-10.2.0"

conflict("PATRIC-cli")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("BioPerl/1.7.8-GCCcore-10.2.0") ) then
    load("BioPerl/1.7.8-GCCcore-10.2.0")
end

prepend_path("PATH", pathJoin(root, "share/patric-cli/deployment/plbin"))
prepend_path("PERL5LIB", pathJoin(root, "share/patric-cli/deployment/lib"))
setenv("EBROOTPATRIC", root)
setenv("EBVERSIONPATRIC", "1.035")

-- Hand Built with vi by John Dey jfdey@fredhutch.org
