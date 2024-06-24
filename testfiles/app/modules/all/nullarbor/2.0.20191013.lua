help([==[

Description
===========
Pipeline to generate complete public health microbiology reports from sequenced isolates


More information
================
 - Homepage: https://github.com/tseemann/nullarbor
]==])

whatis([==[Description: 
Pipeline to generate complete public health microbiology reports from sequenced isolates
]==])
whatis([==[Homepage: https://github.com/tseemann/nullarbor]==])
whatis([==[URL: https://github.com/tseemann/nullarbor]==])

local root = "/app/software/nullarbor/2.0.20191013"

conflict("nullarbor")

if not ( isloaded("Miniconda3/4.7.10") ) then
    load("Miniconda3/4.7.10")
end

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNULLARBOR", root)
setenv("EBVERSIONNULLARBOR", "2.0.20191013")
setenv("EBDEVELNULLARBOR", pathJoin(root, "logs/nullarbor-2.0.20191013-easybuild-devel"))

prepend_path("PATH", root)
setenv("CONDA_ENV", "/app/software/nullarbor/2.0.20191013")
setenv("CONDA_PREFIX", "/app/software/nullarbor/2.0.20191013")
setenv("CONDA_DEFAULT_ENV", "/app/software/nullarbor/2.0.20191013")
-- Built with EasyBuild version 4.1.2
