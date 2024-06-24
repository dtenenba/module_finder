help([==[

Description
===========
TeX is a typesetting language. Instead of visually formatting your text, you enter your manuscript
 text intertwined with TeX commands in a plain text file. You then run TeX to produce formatted output, such as a
 PDF file. Thus, in contrast to standard word processors, your document is a separate file that does not pretend to
 be a representation of the final typeset output, and so can be easily edited and manipulated.


More information
================
 - Homepage: https://tug.org
]==])

whatis([==[Description: TeX is a typesetting language. Instead of visually formatting your text, you enter your manuscript
 text intertwined with TeX commands in a plain text file. You then run TeX to produce formatted output, such as a
 PDF file. Thus, in contrast to standard word processors, your document is a separate file that does not pretend to
 be a representation of the final typeset output, and so can be easily edited and manipulated.]==])
whatis([==[Homepage: https://tug.org]==])
whatis([==[URL: https://tug.org]==])

local root = "/app/software/texlive/20210324-GCC-11.2.0"

conflict("texlive")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-11.2.0") ) then
    load("libGLU/9.0.2-GCCcore-11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("HarfBuzz/2.8.2-GCCcore-11.2.0") ) then
    load("HarfBuzz/2.8.2-GCCcore-11.2.0")
end

if not ( isloaded("poppler/22.01.0-GCC-11.2.0") ) then
    load("poppler/22.01.0-GCC-11.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-11.2.0") ) then
    load("cairo/1.16.0-GCCcore-11.2.0")
end

if not ( isloaded("fontconfig/2.13.94-GCCcore-11.2.0") ) then
    load("fontconfig/2.13.94-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("graphite2/1.3.14-GCCcore-11.2.0") ) then
    load("graphite2/1.3.14-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTEXLIVE", root)
setenv("EBVERSIONTEXLIVE", "20210324")
setenv("EBDEVELTEXLIVE", pathJoin(root, "logs/texlive-20210324-GCC-11.2.0-easybuild-devel"))

setenv("TEXMFHOME", "/app/software/texlive/20210324-GCC-11.2.0/texmf-dist")
prepend_path("PATH", pathJoin(root, "bin/x86_64-linux"))
prepend_path("INFOPATH", pathJoin(root, "texmf-dist/doc/info"))
prepend_path("MANPATH", pathJoin(root, "texmf-dist/doc/man"))
-- Built with EasyBuild version 4.5.3
