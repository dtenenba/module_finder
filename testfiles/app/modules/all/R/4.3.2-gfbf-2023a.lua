help([==[

Description
===========
R is a free software environment for statistical computing
 and graphics.


More information
================
 - Homepage: https://www.r-project.org/


Included extensions
===================
askpass-1.2.0, base, base64enc-0.1-3, brew-1.0-8, brio-1.1.3, bslib-0.5.1,
cachem-1.0.8, callr-3.7.3, cli-3.6.1, clipr-0.8.0, commonmark-1.9.0, compiler,
cpp11-0.4.6, crayon-1.5.2, credentials-2.0.1, curl-5.1.0, datasets,
desc-1.4.2, devtools-2.4.5, diffobj-0.3.5, digest-0.6.33, downlit-0.4.3,
ellipsis-0.3.2, evaluate-0.23, fansi-1.0.5, fastmap-1.1.1, fontawesome-0.5.2,
fs-1.6.3, gert-2.0.0, gh-1.4.0, gitcreds-0.1.2, glue-1.6.2, graphics,
grDevices, grid, highr-0.10, htmltools-0.5.7, htmlwidgets-1.6.2,
httpuv-1.6.12, httr-1.4.7, httr2-0.2.3, ini-0.3.1, jquerylib-0.1.4,
jsonlite-1.8.7, knitr-1.45, later-1.3.1, lifecycle-1.0.3, magrittr-2.0.3,
memoise-2.0.1, methods, mime-0.12, miniUI-0.1.1.1, openssl-2.1.1, parallel,
pillar-1.9.0, pkgbuild-1.4.2, pkgconfig-2.0.3, pkgdown-2.0.7, pkgload-1.3.3,
praise-1.0.0, prettyunits-1.2.0, processx-3.8.2, profvis-0.3.8,
promises-1.2.1, ps-1.7.5, purrr-1.0.2, R6-2.5.1, ragg-1.2.6, rappdirs-0.3.3,
rcmdcheck-1.4.0, Rcpp-1.0.11, rematch2-2.1.2, remotes-2.4.2.1, rlang-1.1.2,
rmarkdown-2.25, roxygen2-7.2.3, rprojroot-2.0.4, rstudioapi-0.15.0,
rversions-2.1.2, sass-0.4.7, sessioninfo-1.2.2, shiny-1.7.5.1,
sourcetools-0.1.7-1, splines, stats, stats4, stringi-1.7.12, stringr-1.5.0,
sys-3.4.2, systemfonts-1.0.5, tcltk, testthat-3.2.0, textshaping-0.3.7,
tibble-3.2.1, tinytex-0.48, tools, urlchecker-1.0.1, usethis-2.2.2,
utf8-1.2.4, utils, vctrs-0.6.4, waldo-0.5.2, whisker-0.4.1, withr-2.5.2,
xfun-0.41, xml2-1.3.5, xopen-1.0.0, xtable-1.8-4, yaml-2.3.7, zip-2.3.0
]==])

whatis([==[Description: R is a free software environment for statistical computing
 and graphics.]==])
whatis([==[Homepage: https://www.r-project.org/]==])
whatis([==[URL: https://www.r-project.org/]==])
whatis([==[Extensions: askpass-1.2.0, base, base64enc-0.1-3, brew-1.0-8, brio-1.1.3, bslib-0.5.1, cachem-1.0.8, callr-3.7.3, cli-3.6.1, clipr-0.8.0, commonmark-1.9.0, compiler, cpp11-0.4.6, crayon-1.5.2, credentials-2.0.1, curl-5.1.0, datasets, desc-1.4.2, devtools-2.4.5, diffobj-0.3.5, digest-0.6.33, downlit-0.4.3, ellipsis-0.3.2, evaluate-0.23, fansi-1.0.5, fastmap-1.1.1, fontawesome-0.5.2, fs-1.6.3, gert-2.0.0, gh-1.4.0, gitcreds-0.1.2, glue-1.6.2, graphics, grDevices, grid, highr-0.10, htmltools-0.5.7, htmlwidgets-1.6.2, httpuv-1.6.12, httr-1.4.7, httr2-0.2.3, ini-0.3.1, jquerylib-0.1.4, jsonlite-1.8.7, knitr-1.45, later-1.3.1, lifecycle-1.0.3, magrittr-2.0.3, memoise-2.0.1, methods, mime-0.12, miniUI-0.1.1.1, openssl-2.1.1, parallel, pillar-1.9.0, pkgbuild-1.4.2, pkgconfig-2.0.3, pkgdown-2.0.7, pkgload-1.3.3, praise-1.0.0, prettyunits-1.2.0, processx-3.8.2, profvis-0.3.8, promises-1.2.1, ps-1.7.5, purrr-1.0.2, R6-2.5.1, ragg-1.2.6, rappdirs-0.3.3, rcmdcheck-1.4.0, Rcpp-1.0.11, rematch2-2.1.2, remotes-2.4.2.1, rlang-1.1.2, rmarkdown-2.25, roxygen2-7.2.3, rprojroot-2.0.4, rstudioapi-0.15.0, rversions-2.1.2, sass-0.4.7, sessioninfo-1.2.2, shiny-1.7.5.1, sourcetools-0.1.7-1, splines, stats, stats4, stringi-1.7.12, stringr-1.5.0, sys-3.4.2, systemfonts-1.0.5, tcltk, testthat-3.2.0, textshaping-0.3.7, tibble-3.2.1, tinytex-0.48, tools, urlchecker-1.0.1, usethis-2.2.2, utf8-1.2.4, utils, vctrs-0.6.4, waldo-0.5.2, whisker-0.4.1, withr-2.5.2, xfun-0.41, xml2-1.3.5, xopen-1.0.0, xtable-1.8-4, yaml-2.3.7, zip-2.3.0]==])

local root = "/app/software/R/4.3.2-gfbf-2023a"

conflict("R")

if not ( isloaded("gfbf/2023a") ) then
    load("gfbf/2023a")
end

if not ( isloaded("X11/20230603-GCCcore-12.3.0") ) then
    load("X11/20230603-GCCcore-12.3.0")
end

if not ( isloaded("Mesa/23.1.4-GCCcore-12.3.0") ) then
    load("Mesa/23.1.4-GCCcore-12.3.0")
end

if not ( isloaded("libGLU/9.0.3-GCCcore-12.3.0") ) then
    load("libGLU/9.0.3-GCCcore-12.3.0")
end

if not ( isloaded("cairo/1.17.8-GCCcore-12.3.0") ) then
    load("cairo/1.17.8-GCCcore-12.3.0")
end

if not ( isloaded("libreadline/8.2-GCCcore-12.3.0") ) then
    load("libreadline/8.2-GCCcore-12.3.0")
end

if not ( isloaded("ncurses/6.4-GCCcore-12.3.0") ) then
    load("ncurses/6.4-GCCcore-12.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.3.0") ) then
    load("bzip2/1.0.8-GCCcore-12.3.0")
end

if not ( isloaded("XZ/5.4.2-GCCcore-12.3.0") ) then
    load("XZ/5.4.2-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

if not ( isloaded("SQLite/3.42.0-GCCcore-12.3.0") ) then
    load("SQLite/3.42.0-GCCcore-12.3.0")
end

if not ( isloaded("PCRE2/10.42-GCCcore-12.3.0") ) then
    load("PCRE2/10.42-GCCcore-12.3.0")
end

if not ( isloaded("libpng/1.6.39-GCCcore-12.3.0") ) then
    load("libpng/1.6.39-GCCcore-12.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.5.1-GCCcore-12.3.0") ) then
    load("libjpeg-turbo/2.1.5.1-GCCcore-12.3.0")
end

if not ( isloaded("LibTIFF/4.5.0-GCCcore-12.3.0") ) then
    load("LibTIFF/4.5.0-GCCcore-12.3.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("libgit2/1.7.1-GCCcore-12.3.0") ) then
    load("libgit2/1.7.1-GCCcore-12.3.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("cURL/8.0.1-GCCcore-12.3.0") ) then
    load("cURL/8.0.1-GCCcore-12.3.0")
end

if not ( isloaded("Tk/8.6.13-GCCcore-12.3.0") ) then
    load("Tk/8.6.13-GCCcore-12.3.0")
end

if not ( isloaded("HarfBuzz/5.3.1-GCCcore-12.3.0") ) then
    load("HarfBuzz/5.3.1-GCCcore-12.3.0")
end

if not ( isloaded("FriBidi/1.0.12-GCCcore-12.3.0") ) then
    load("FriBidi/1.0.12-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/R/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/R/lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTR", root)
setenv("EBVERSIONR", "4.3.2")
setenv("EBDEVELR", pathJoin(root, "logs/R-4.3.2-gfbf-2023a-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTR", "base,compiler,datasets,graphics,grDevices,grid,methods,parallel,splines,stats,stats4,tcltk,tools,utils,rlang-1.1.2,Rcpp-1.0.11,R6-2.5.1,cli-3.6.1,base64enc-0.1-3,rprojroot-2.0.4,xfun-0.41,commonmark-1.9.0,highr-0.10,digest-0.6.33,desc-1.4.2,ellipsis-0.3.2,prettyunits-1.2.0,crayon-1.5.2,stringi-1.7.12,magrittr-2.0.3,evaluate-0.23,ps-1.7.5,processx-3.8.2,callr-3.7.3,pkgbuild-1.4.2,fs-1.6.3,utf8-1.2.4,fansi-1.0.5,pkgconfig-2.0.3,withr-2.5.2,glue-1.6.2,rstudioapi-0.15.0,pkgload-1.3.3,fastmap-1.1.1,htmltools-0.5.7,yaml-2.3.7,knitr-1.45,mime-0.12,praise-1.0.0,brio-1.1.3,jsonlite-1.8.7,lifecycle-1.0.3,vctrs-0.6.4,stringr-1.5.0,pillar-1.9.0,tibble-3.2.1,diffobj-0.3.5,rematch2-2.1.2,waldo-0.5.2,testthat-3.2.0,xml2-1.3.5,curl-5.1.0,sys-3.4.2,askpass-1.2.0,openssl-2.1.1,httr-1.4.7,jquerylib-0.1.4,rappdirs-0.3.3,sass-0.4.7,purrr-1.0.2,cachem-1.0.8,memoise-2.0.1,bslib-0.5.1,fontawesome-0.5.2,tinytex-0.48,rmarkdown-2.25,downlit-0.4.3,cpp11-0.4.6,systemfonts-1.0.5,textshaping-0.3.7,ragg-1.2.6,whisker-0.4.1,pkgdown-2.0.7,htmlwidgets-1.6.2,profvis-0.3.8,urlchecker-1.0.1,later-1.3.1,promises-1.2.1,xtable-1.8-4,httpuv-1.6.12,sourcetools-0.1.7-1,shiny-1.7.5.1,miniUI-0.1.1.1,brew-1.0-8,roxygen2-7.2.3,rversions-2.1.2,sessioninfo-1.2.2,xopen-1.0.0,rcmdcheck-1.4.0,remotes-2.4.2.1,clipr-0.8.0,ini-0.3.1,gitcreds-0.1.2,httr2-0.2.3,gh-1.4.0,credentials-2.0.1,zip-2.3.0,gert-2.0.0,usethis-2.2.2,devtools-2.4.5")
