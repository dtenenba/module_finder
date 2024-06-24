help([==[

Description
===========
OncoSNP-SEQ is an analytical tool for characterising copy number alterations
 and loss-of-heterozygosity (LOH) events in cancer samples from whole genome sequencing data.


More information
================
 - Homepage: https://sites.google.com/site/oncosnpseq
]==])

whatis([==[Description: OncoSNP-SEQ is an analytical tool for characterising copy number alterations
 and loss-of-heterozygosity (LOH) events in cancer samples from whole genome sequencing data.]==])
whatis([==[Homepage: https://sites.google.com/site/oncosnpseq]==])
whatis([==[URL: https://sites.google.com/site/oncosnpseq]==])

local root = "/app/software/oncosnpseq/2.01"

conflict("oncosnpseq")

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTONCOSNPSEQ", root)
setenv("EBVERSIONONCOSNPSEQ", "2.01")
setenv("EBDEVELONCOSNPSEQ", pathJoin(root, "logs/oncosnpseq-2.01-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "scripts"))
-- Built with EasyBuild version 4.2.1
