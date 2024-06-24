help([==[

Description
===========
Variant Effect Predictor (VEP) determines the effect of your
 variants (SNPs, insertions, deletions, CNVs or structural variants) on genes,
 transcripts, and protein sequence, as well as regulatory regions.
 Includes EnsEMBL-XS, which provides pre-compiled replacements for frequently
 used routines in VEP.


More information
================
 - Homepage: https://www.ensembl.org/info/docs/tools/vep


Included extensions
===================
Bio::EnsEMBL::XS-2.3.2
]==])

whatis([==[Description: Variant Effect Predictor (VEP) determines the effect of your
 variants (SNPs, insertions, deletions, CNVs or structural variants) on genes,
 transcripts, and protein sequence, as well as regulatory regions.
 Includes EnsEMBL-XS, which provides pre-compiled replacements for frequently
 used routines in VEP.]==])
whatis([==[Homepage: https://www.ensembl.org/info/docs/tools/vep]==])
whatis([==[URL: https://www.ensembl.org/info/docs/tools/vep]==])
whatis([==[Extensions: Bio::EnsEMBL::XS-2.3.2]==])

local root = "/app/software/VEP/103.0-foss-2020b"

conflict("VEP")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("DBD-mysql/4.050-GCC-10.2.0") ) then
    load("DBD-mysql/4.050-GCC-10.2.0")
end

if not ( isloaded("BioPerl/1.7.8-GCCcore-10.2.0") ) then
    load("BioPerl/1.7.8-GCCcore-10.2.0")
end

if not ( isloaded("Bio-DB-HTS/3.01-GCC-10.2.0") ) then
    load("Bio-DB-HTS/3.01-GCC-10.2.0")
end

prepend_path("PATH", root)
prepend_path("PERL5LIB", pathJoin(root, "modules/api"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0"))
setenv("EBROOTVEP", root)
setenv("EBVERSIONVEP", "103.0")
setenv("EBDEVELVEP", pathJoin(root, "logs/VEP-103.0-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTVEP", "Bio::EnsEMBL::XS-2.3.2")
