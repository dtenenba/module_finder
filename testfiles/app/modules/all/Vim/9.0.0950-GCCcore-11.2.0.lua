help([==[

Description
===========
Vim is an advanced text editor that seeks to provide the power 
 of the de-facto Unix editor 'Vi', with a more complete feature set.


More information
================
 - Homepage: http://www.vim.org
]==])

whatis([==[Description:  Vim is an advanced text editor that seeks to provide the power 
 of the de-facto Unix editor 'Vi', with a more complete feature set. ]==])
whatis([==[Homepage: http://www.vim.org]==])
whatis([==[URL: http://www.vim.org]==])

local root = "/app/software/Vim/9.0.0950-GCCcore-11.2.0"

conflict("Vim")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("PCRE/8.45-GCCcore-11.2.0") ) then
    load("PCRE/8.45-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTVIM", root)
setenv("EBVERSIONVIM", "9.0.0950")
setenv("EBDEVELVIM", pathJoin(root, "logs/Vim-9.0.0950-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
