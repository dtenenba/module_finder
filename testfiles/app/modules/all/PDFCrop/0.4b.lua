help([==[

Description
===========
PDFCrop is a Perl script that crops the white margins of PDF pages and rescales them
 to fit a standard size sheet of paper. It makes the printed pages far more attractive to read!


More information
================
 - Homepage: http://pdfcrop.sourceforge.net/
]==])

whatis([==[Description: PDFCrop is a Perl script that crops the white margins of PDF pages and rescales them
 to fit a standard size sheet of paper. It makes the printed pages far more attractive to read!]==])
whatis([==[Homepage: http://pdfcrop.sourceforge.net/]==])
whatis([==[URL: http://pdfcrop.sourceforge.net/]==])

local root = "/app/software/PDFCrop/0.4b"

conflict("PDFCrop")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPDFCROP", root)
setenv("EBVERSIONPDFCROP", "0.4b")
setenv("EBDEVELPDFCROP", pathJoin(root, "logs/PDFCrop-0.4b-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.4
