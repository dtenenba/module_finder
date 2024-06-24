help([==[

Description
===========
Convert VCF into MAF, each variant must be mapped to only one of all possible gene transcripts/isoforms that it might affect.

More information
================
 - Homepage: https://github.com/mskcc/vcf2maf 
]==])

whatis([==[Description: vcflib provides methods to manipulate and interpret sequence variation as it can be
 described by VCF. The Variant Call Format (VCF) is a flat-file, tab-delimited textual format intended
 to concisely describe reference-indexed genetic variations between individuals.]==])
whatis([==[Homepage: https://github.com/mskcc/vcf2maf ]==])
whatis([==[URL: https://github.com/mskcc/vcf2maf ]==])

local root = "/app/lib/vcf2maf/mskcc-vcf2maf-958809e"

conflict("vcf2maf")

-- All the requirements for vcf2maf are met by loading VEP
-- vcf2maf requires Perl. 
if not ( isloaded("VEP/103.0-foss-2020b") ) then
    load("VEP/103.0-foss-2020b")
end

if not ( isloaded("SAMtools/1.11-GCC-10.2.0") ) then
    load("SAMtools/1.11-GCC-10.2.0")
end

prepend_path("PATH", root)
prepend_path("PERL5LIB", root) 

-- hand-built with vim by John Dey 
