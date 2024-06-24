help([==[

Description
===========
TeX is a typesetting language. Instead of visually
formatting your text, you enter your manuscript text intertwined with TeX
commands in a plain text file. You then run TeX to produce formatted output,
such as a PDF file. Thus, in contrast to standard word processors, your
document is a separate file that does not pretend to be a representation
of the final typeset output, and so can be easily edited and manipulated.


More information
================
 - Homepage: http://tug.org
 ]==])

 whatis([==[Description: TeX is a typesetting language. Instead of visually
 formatting your text, you enter your manuscript text intertwined with TeX
 commands in a plain text file. You then run TeX to produce formatted output,
 such as a PDF file. Thus, in contrast to standard word processors, your
 document is a separate file that does not pretend to be a representation
 of the final typeset output, and so can be easily edited and manipulated.]==])
 whatis([==[Homepage: http://tug.org]==])

 local root = "/app/software/texlive/20200624/texlive/2020"

 conflict("texlive")

if not isloaded("foss/2019b") then
    load("foss/2019b")
end

if not isloaded("X11/20190717-GCCcore-8.3.0") then
    load("X11/20190717-GCCcore-8.3.0")
end

if not isloaded("libpng/1.6.37-GCCcore-8.3.0") then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not isloaded("libGLU/9.0.1-GCCcore-8.3.0") then
    load("libGLU/9.0.1-GCCcore-8.3.0")
end

if not isloaded("Perl/5.30.0-GCCcore-8.3.0") then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not isloaded("HarfBuzz/2.6.4-GCCcore-8.3.0") then
    load("HarfBuzz/2.6.4-GCCcore-8.3.0")
end

if not isloaded("poppler/0.87.0-foss-2019b") then
    load("poppler/0.87.0-foss-2019b")
end

if not isloaded("cairo/1.16.0-GCCcore-8.3.0") then
    load("cairo/1.16.0-GCCcore-8.3.0")
end

if not isloaded("fontconfig/2.13.1-GCCcore-8.3.0") then
    load("fontconfig/2.13.1-GCCcore-8.3.0")
end

if not isloaded("zlib/1.2.11-GCCcore-8.3.0") then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not isloaded("graphite2/1.3.14-GCCcore-8.3.0") then
    load("graphite2/1.3.14-GCCcore-8.3.0")
end

setenv("EBROOTTEXLIVE", "/app/software/texlive/20200624")
setenv("TEXLIVE_VERSION", "20200624")
setenv("TEXMFMAIN", pathJoin(root, "texmf-dist"))
setenv("TEXMFDIST", pathJoin(root, "texmf-dist"))
setenv("TEXMFSYSCONF", pathJoin(root, "texmf-config"))
setenv("TEXMFSYSVAR", pathJoin(root, "texmf-var"))
prepend_path("PATH", pathJoin(root, "bin/x86_64-linux"))
prepend_path("MANPATH", pathJoin(root, "texmf-dist/doc/man"))
prepend_path("INFOPATH", pathJoin(root, "texmf-dist/doc/info"))
-- Built by hand with Vim!
