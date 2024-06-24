help([==[

Description
===========
RStudio is an integrated development environment 
(IDE) for the R programming language.


More information
================
 - Homepage: https://github.com/rstudio/rstudio
]==])

whatis([==[Description: RStudio is an integrated development environment 
(IDE) for the R programming language.]==])
whatis([==[Homepage: https://github.com/rstudio/rstudio]==])
whatis([==[URL: https://github.com/rstudio/rstudio]==])

local root = "/app/software/rstudio-server/1.2.5033-foss-2019b"

conflict("rstudio-server")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("libpthread-stubs/0.4-GCCcore-8.3.0") ) then
    load("libpthread-stubs/0.4-GCCcore-8.3.0")
end

if not ( isloaded("Boost/1.69.0-foss-2019b") ) then
    load("Boost/1.69.0-foss-2019b")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSTUDIOMINSERVER", root)
setenv("EBVERSIONRSTUDIOMINSERVER", "1.2.5033")
setenv("EBDEVELRSTUDIOMINSERVER", pathJoin(root, "logs/rstudio-server-1.2.5033-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
