help([==[

Description
===========
Generic indexer for TAB-delimited genome position files


More information
================
 - Homepage: http://samtools.sourceforge.net
]==])

whatis([==[Description:  Generic indexer for TAB-delimited genome position files ]==])
whatis([==[Homepage: http://samtools.sourceforge.net]==])
whatis([==[URL: http://samtools.sourceforge.net]==])

local root = "/app/software/tabix/0.2.6-GCCcore-8.3.0"

conflict("tabix")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTABIX", root)
setenv("EBVERSIONTABIX", "0.2.6")
setenv("EBDEVELTABIX", pathJoin(root, "logs/tabix-0.2.6-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.0
