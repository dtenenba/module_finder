help([==[

Description
===========
Snippy finds SNPs between a haploid reference genome and your NGS sequence
 reads. It will find both substitutions (snps) and insertions/deletions (indels).
Rapid haploid variant calling and core genome alignment.


More information
================
 - Homepage: https://github.com/tseemann/snippy
]==])

whatis([==[Description: Snippy finds SNPs between a haploid reference genome and your NGS sequence
 reads. It will find both substitutions (snps) and insertions/deletions (indels).
Rapid haploid variant calling and core genome alignment.]==])
whatis([==[Homepage: https://github.com/tseemann/snippy]==])
whatis([==[URL: https://github.com/tseemann/snippy]==])

local root = "/app/software/snippy/4.6.0-foss-2019b-Perl-5.30.0"

conflict("snippy")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("BioPerl/1.7.2-GCCcore-8.3.0") ) then
    load("BioPerl/1.7.2-GCCcore-8.3.0")
end

if not ( isloaded("seqtk/1.3-GCC-8.3.0") ) then
    load("seqtk/1.3-GCC-8.3.0")
end

if not ( isloaded("vt/0.57721-foss-2019b") ) then
    load("vt/0.57721-foss-2019b")
end

if not ( isloaded("SAMtools/1.10-GCCcore-8.3.0") ) then
    load("SAMtools/1.10-GCCcore-8.3.0")
end

if not ( isloaded("BCFtools/1.9-GCC-8.3.0") ) then
    load("BCFtools/1.9-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSNIPPY", root)
setenv("EBVERSIONSNIPPY", "4.6.0")
setenv("EBDEVELSNIPPY", pathJoin(root, "logs/snippy-4.6.0-foss-2019b-Perl-5.30.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
