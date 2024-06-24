help([==[

Description
===========
LFTP is a sophisticated ftp/http client, and a file transfer program supporting
  a number of network protocols. Like BASH, it has job control and uses the readline library for
  input. It has bookmarks, a built-in mirror command, and can transfer several files in parallel.
  It was designed with reliability in mind.


More information
================
 - Homepage: http://lftp.yar.ru
]==])

whatis([==[Description: LFTP is a sophisticated ftp/http client, and a file transfer program supporting
  a number of network protocols. Like BASH, it has job control and uses the readline library for
  input. It has bookmarks, a built-in mirror command, and can transfer several files in parallel.
  It was designed with reliability in mind.]==])
whatis([==[Homepage: http://lftp.yar.ru]==])
whatis([==[URL: http://lftp.yar.ru]==])

local root = "/app/software/lftp/4.9.1-GCCcore-8.3.0"

conflict("lftp")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLFTP", root)
setenv("EBVERSIONLFTP", "4.9.1")
setenv("EBDEVELLFTP", pathJoin(root, "logs/lftp-4.9.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
