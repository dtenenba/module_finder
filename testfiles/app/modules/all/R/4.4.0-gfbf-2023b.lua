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
askpass-1.2.0, base, base64enc-0.1-3, brew-1.0-10, brio-1.1.5, bslib-0.7.0,
cachem-1.0.8, callr-3.7.6, cli-3.6.2, clipr-0.8.0, commonmark-1.9.1, compiler,
cpp11-0.4.7, crayon-1.5.2, credentials-2.0.1, curl-5.2.1, datasets,
desc-1.4.3, devtools-2.4.5, diffobj-0.3.5, digest-0.6.35, downlit-0.4.3,
ellipsis-0.3.2, evaluate-0.23, fansi-1.0.6, fastmap-1.2.0, fontawesome-0.5.2,
fs-1.6.4, gert-2.0.1, gh-1.4.1, gitcreds-0.1.2, glue-1.7.0, graphics,
grDevices, grid, highr-0.10, htmltools-0.5.8.1, htmlwidgets-1.6.4,
httpuv-1.6.15, httr-1.4.7, httr2-1.0.1, ini-0.3.1, jquerylib-0.1.4,
jsonlite-1.8.8, knitr-1.46, later-1.3.2, lifecycle-1.0.4, magrittr-2.0.3,
memoise-2.0.1, methods, mime-0.12, miniUI-0.1.1.1, openssl-2.1.2, parallel,
pillar-1.9.0, pkgbuild-1.4.4, pkgconfig-2.0.3, pkgdown-2.0.9, pkgload-1.3.4,
praise-1.0.0, prettyunits-1.2.0, processx-3.8.4, profvis-0.3.8,
promises-1.3.0, ps-1.7.6, purrr-1.0.2, R6-2.5.1, ragg-1.3.2, rappdirs-0.3.3,
rcmdcheck-1.4.0, Rcpp-1.0.12, rematch2-2.1.2, remotes-2.5.0, rlang-1.1.3,
rmarkdown-2.26, roxygen2-7.3.1, rprojroot-2.0.4, rstudioapi-0.16.0,
rversions-2.1.2, sass-0.4.9, sessioninfo-1.2.2, shiny-1.8.1.1,
sourcetools-0.1.7-1, splines, stats, stats4, stringi-1.8.4, stringr-1.5.1,
sys-3.4.2, systemfonts-1.1.0, tcltk, testthat-3.2.1.1, textshaping-0.3.7,
tibble-3.2.1, tinytex-0.51, tools, urlchecker-1.0.1, usethis-2.2.3,
utf8-1.2.4, utils, vctrs-0.6.5, waldo-0.5.2, whisker-0.4.1, withr-3.0.0,
xfun-0.44, xml2-1.3.6, xopen-1.0.1, xtable-1.8-4, yaml-2.3.8, zip-2.3.1
]==])

whatis([==[Description: R is a free software environment for statistical computing
 and graphics.]==])
whatis([==[Homepage: https://www.r-project.org/]==])
whatis([==[URL: https://www.r-project.org/]==])
whatis([==[Extensions: askpass-1.2.0, base, base64enc-0.1-3, brew-1.0-10, brio-1.1.5, bslib-0.7.0, cachem-1.0.8, callr-3.7.6, cli-3.6.2, clipr-0.8.0, commonmark-1.9.1, compiler, cpp11-0.4.7, crayon-1.5.2, credentials-2.0.1, curl-5.2.1, datasets, desc-1.4.3, devtools-2.4.5, diffobj-0.3.5, digest-0.6.35, downlit-0.4.3, ellipsis-0.3.2, evaluate-0.23, fansi-1.0.6, fastmap-1.2.0, fontawesome-0.5.2, fs-1.6.4, gert-2.0.1, gh-1.4.1, gitcreds-0.1.2, glue-1.7.0, graphics, grDevices, grid, highr-0.10, htmltools-0.5.8.1, htmlwidgets-1.6.4, httpuv-1.6.15, httr-1.4.7, httr2-1.0.1, ini-0.3.1, jquerylib-0.1.4, jsonlite-1.8.8, knitr-1.46, later-1.3.2, lifecycle-1.0.4, magrittr-2.0.3, memoise-2.0.1, methods, mime-0.12, miniUI-0.1.1.1, openssl-2.1.2, parallel, pillar-1.9.0, pkgbuild-1.4.4, pkgconfig-2.0.3, pkgdown-2.0.9, pkgload-1.3.4, praise-1.0.0, prettyunits-1.2.0, processx-3.8.4, profvis-0.3.8, promises-1.3.0, ps-1.7.6, purrr-1.0.2, R6-2.5.1, ragg-1.3.2, rappdirs-0.3.3, rcmdcheck-1.4.0, Rcpp-1.0.12, rematch2-2.1.2, remotes-2.5.0, rlang-1.1.3, rmarkdown-2.26, roxygen2-7.3.1, rprojroot-2.0.4, rstudioapi-0.16.0, rversions-2.1.2, sass-0.4.9, sessioninfo-1.2.2, shiny-1.8.1.1, sourcetools-0.1.7-1, splines, stats, stats4, stringi-1.8.4, stringr-1.5.1, sys-3.4.2, systemfonts-1.1.0, tcltk, testthat-3.2.1.1, textshaping-0.3.7, tibble-3.2.1, tinytex-0.51, tools, urlchecker-1.0.1, usethis-2.2.3, utf8-1.2.4, utils, vctrs-0.6.5, waldo-0.5.2, whisker-0.4.1, withr-3.0.0, xfun-0.44, xml2-1.3.6, xopen-1.0.1, xtable-1.8-4, yaml-2.3.8, zip-2.3.1]==])

local root = "/app/software/R/4.4.0-gfbf-2023b"

conflict("R")

if not ( isloaded("gfbf/2023b") ) then
    load("gfbf/2023b")
end

if not ( isloaded("X11/20231019-GCCcore-13.2.0") ) then
    load("X11/20231019-GCCcore-13.2.0")
end

if not ( isloaded("Mesa/23.1.9-GCCcore-13.2.0") ) then
    load("Mesa/23.1.9-GCCcore-13.2.0")
end

if not ( isloaded("libGLU/9.0.3-GCCcore-13.2.0") ) then
    load("libGLU/9.0.3-GCCcore-13.2.0")
end

if not ( isloaded("cairo/1.18.0-GCCcore-13.2.0") ) then
    load("cairo/1.18.0-GCCcore-13.2.0")
end

if not ( isloaded("libreadline/8.2-GCCcore-13.2.0") ) then
    load("libreadline/8.2-GCCcore-13.2.0")
end

if not ( isloaded("ncurses/6.4-GCCcore-13.2.0") ) then
    load("ncurses/6.4-GCCcore-13.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-13.2.0") ) then
    load("bzip2/1.0.8-GCCcore-13.2.0")
end

if not ( isloaded("XZ/5.4.4-GCCcore-13.2.0") ) then
    load("XZ/5.4.4-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("SQLite/3.43.1-GCCcore-13.2.0") ) then
    load("SQLite/3.43.1-GCCcore-13.2.0")
end

if not ( isloaded("PCRE2/10.42-GCCcore-13.2.0") ) then
    load("PCRE2/10.42-GCCcore-13.2.0")
end

if not ( isloaded("libpng/1.6.40-GCCcore-13.2.0") ) then
    load("libpng/1.6.40-GCCcore-13.2.0")
end

if not ( isloaded("libjpeg-turbo/3.0.1-GCCcore-13.2.0") ) then
    load("libjpeg-turbo/3.0.1-GCCcore-13.2.0")
end

if not ( isloaded("LibTIFF/4.6.0-GCCcore-13.2.0") ) then
    load("LibTIFF/4.6.0-GCCcore-13.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("libgit2/1.7.2-GCCcore-13.2.0") ) then
    load("libgit2/1.7.2-GCCcore-13.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("cURL/8.3.0-GCCcore-13.2.0") ) then
    load("cURL/8.3.0-GCCcore-13.2.0")
end

if not ( isloaded("Tk/8.6.13-GCCcore-13.2.0") ) then
    load("Tk/8.6.13-GCCcore-13.2.0")
end

if not ( isloaded("HarfBuzz/8.2.2-GCCcore-13.2.0") ) then
    load("HarfBuzz/8.2.2-GCCcore-13.2.0")
end

if not ( isloaded("FriBidi/1.0.13-GCCcore-13.2.0") ) then
    load("FriBidi/1.0.13-GCCcore-13.2.0")
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
setenv("EBVERSIONR", "4.4.0")
setenv("EBDEVELR", pathJoin(root, "logs/R-4.4.0-gfbf-2023b-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTR", "base,compiler,datasets,graphics,grDevices,grid,methods,parallel,splines,stats,stats4,tcltk,tools,utils,rlang-1.1.3,Rcpp-1.0.12,R6-2.5.1,cli-3.6.2,base64enc-0.1-3,rprojroot-2.0.4,xfun-0.44,commonmark-1.9.1,highr-0.10,digest-0.6.35,desc-1.4.3,ellipsis-0.3.2,prettyunits-1.2.0,crayon-1.5.2,stringi-1.8.4,magrittr-2.0.3,evaluate-0.23,ps-1.7.6,processx-3.8.4,callr-3.7.6,pkgbuild-1.4.4,fs-1.6.4,utf8-1.2.4,fansi-1.0.6,pkgconfig-2.0.3,withr-3.0.0,glue-1.7.0,rstudioapi-0.16.0,brio-1.1.5,pkgload-1.3.4,fastmap-1.2.0,htmltools-0.5.8.1,yaml-2.3.8,knitr-1.46,mime-0.12,praise-1.0.0,jsonlite-1.8.8,lifecycle-1.0.4,vctrs-0.6.5,stringr-1.5.1,pillar-1.9.0,tibble-3.2.1,diffobj-0.3.5,rematch2-2.1.2,waldo-0.5.2,testthat-3.2.1.1,xml2-1.3.6,curl-5.2.1,sys-3.4.2,askpass-1.2.0,openssl-2.1.2,httr-1.4.7,jquerylib-0.1.4,rappdirs-0.3.3,sass-0.4.9,purrr-1.0.2,cachem-1.0.8,memoise-2.0.1,bslib-0.7.0,fontawesome-0.5.2,tinytex-0.51,rmarkdown-2.26,downlit-0.4.3,cpp11-0.4.7,systemfonts-1.1.0,textshaping-0.3.7,ragg-1.3.2,whisker-0.4.1,pkgdown-2.0.9,htmlwidgets-1.6.4,profvis-0.3.8,urlchecker-1.0.1,later-1.3.2,promises-1.3.0,xtable-1.8-4,httpuv-1.6.15,sourcetools-0.1.7-1,shiny-1.8.1.1,miniUI-0.1.1.1,brew-1.0-10,roxygen2-7.3.1,rversions-2.1.2,sessioninfo-1.2.2,xopen-1.0.1,rcmdcheck-1.4.0,remotes-2.5.0,clipr-0.8.0,ini-0.3.1,gitcreds-0.1.2,httr2-1.0.1,gh-1.4.1,credentials-2.0.1,zip-2.3.1,gert-2.0.1,usethis-2.2.3,devtools-2.4.5")
