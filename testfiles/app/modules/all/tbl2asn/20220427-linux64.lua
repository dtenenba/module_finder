help([==[

Description
===========
Tbl2asn is a command-line program that automates the creation of
 sequence records for submission to GenBank


More information
================
 - Homepage: https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/
]==])

whatis([==[Description: Tbl2asn is a command-line program that automates the creation of
 sequence records for submission to GenBank]==])
whatis([==[Homepage: https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/]==])
whatis([==[URL: https://www.ncbi.nlm.nih.gov/genbank/tbl2asn2/]==])

local root = "/app/software/tbl2asn/20220427-linux64"

conflict("tbl2asn")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTBL2ASN", root)
setenv("EBVERSIONTBL2ASN", "20220427")
setenv("EBDEVELTBL2ASN", pathJoin(root, "logs/tbl2asn-20220427-linux64-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
