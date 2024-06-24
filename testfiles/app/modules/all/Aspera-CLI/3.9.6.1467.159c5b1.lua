help([==[

Description
===========
IBM Aspera Command-Line Interface (the Aspera CLI) is
a collection of Aspera tools for performing high-speed, secure data
transfers from the command line. The Aspera CLI is for users and
organizations who want to automate their transfer workflows.


More information
================
 - Homepage: https://asperasoft.com
 - Documentation:
    - https://downloads.asperasoft.com/en/documentation/62
]==])

whatis([==[Description: IBM Aspera Command-Line Interface (the Aspera CLI) is
a collection of Aspera tools for performing high-speed, secure data
transfers from the command line. The Aspera CLI is for users and
organizations who want to automate their transfer workflows.]==])
whatis([==[Homepage: https://asperasoft.com]==])
whatis([==[URL: https://asperasoft.com]==])

local root = "/app/software/Aspera-CLI/3.9.6.1467.159c5b1"

conflict("Aspera-CLI")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTASPERAMINCLI", root)
setenv("EBVERSIONASPERAMINCLI", "3.9.6")
setenv("EBDEVELASPERAMINCLI", pathJoin(root, "logs/Aspera-CLI-3.9.6.1467.159c5b1-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
