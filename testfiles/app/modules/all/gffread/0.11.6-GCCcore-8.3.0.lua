help([==[

Description
===========
GFF/GTF parsing utility providing format conversions,
region filtering, FASTA sequence extraction and more.


More information
================
 - Homepage: https://github.com/gpertea/gffread
]==])

whatis([==[Description: GFF/GTF parsing utility providing format conversions,
region filtering, FASTA sequence extraction and more.]==])
whatis([==[Homepage: https://github.com/gpertea/gffread]==])
whatis([==[URL: https://github.com/gpertea/gffread]==])

local root = "/app/software/gffread/0.11.6-GCCcore-8.3.0"

conflict("gffread")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGFFREAD", root)
setenv("EBVERSIONGFFREAD", "0.11.6")
setenv("EBDEVELGFFREAD", pathJoin(root, "logs/gffread-0.11.6-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.2
