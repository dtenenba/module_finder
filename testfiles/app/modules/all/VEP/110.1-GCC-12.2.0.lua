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
Bio::EnsEMBL::XS-2.3.2, Compress::Raw::Zlib-2.101
]==])

whatis([==[Description: Variant Effect Predictor (VEP) determines the effect of your
 variants (SNPs, insertions, deletions, CNVs or structural variants) on genes,
 transcripts, and protein sequence, as well as regulatory regions.
 Includes EnsEMBL-XS, which provides pre-compiled replacements for frequently
 used routines in VEP.]==])
whatis([==[Homepage: https://www.ensembl.org/info/docs/tools/vep]==])
whatis([==[URL: https://www.ensembl.org/info/docs/tools/vep]==])
whatis([==[Extensions: Bio::EnsEMBL::XS-2.3.2, Compress::Raw::Zlib-2.101]==])

local root = "/app/software/VEP/110.1-GCC-12.2.0"

conflict("VEP")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("Perl/5.36.0-GCCcore-10.2.0") ) then
    load("Perl/5.36.0-GCCcore-12.2.0")
end

if not ( isloaded("Archive-Zip/1.68-GCCcore-12.2.0") ) then
    load("Archive-Zip/1.68-GCCcore-12.2.0")
end

if not ( isloaded("DBD-mysql/4.050-GCC-12.2.0") ) then
    load("DBD-mysql/4.050-GCC-12.2.0")
end

if not ( isloaded("BioPerl/1.7.8-GCCcore-12.2.0") ) then
    load("BioPerl/1.7.8-GCCcore-12.2.0")
end

if not ( isloaded("Bio-DB-HTS/3.01-GCC-12.2.0") ) then
    load("Bio-DB-HTS/3.01-GCC-12.2.0")
end

prepend_path("PATH", root)
prepend_path("PERL5LIB", pathJoin(root, "modules/api"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0"))
setenv("EBROOTVEP", root)
setenv("EBVERSIONVEP", "103.1")
setenv("EBDEVELVEP", pathJoin(root, "logs/VEP-103.1-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTVEP", "Bio::EnsEMBL::XS-2.3.2,Compress::Raw::Zlib-2.101")
