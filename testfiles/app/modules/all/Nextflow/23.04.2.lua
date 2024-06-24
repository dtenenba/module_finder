help([==[

Description
===========
Nextflow is a reactive workflow framework and a programming DSL
 that eases writing computational pipelines with complex data


More information
================
 - Homepage: https://www.nextflow.io/
]==])

whatis([==[Description: Nextflow is a reactive workflow framework and a programming DSL
 that eases writing computational pipelines with complex data]==])
whatis([==[Homepage: https://www.nextflow.io/]==])
whatis([==[URL: https://www.nextflow.io/]==])

local root = "/app/software/Nextflow/23.04.2"

conflict("Nextflow")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNEXTFLOW", root)
setenv("EBVERSIONNEXTFLOW", "23.04.2")
setenv("EBDEVELNEXTFLOW", pathJoin(root, "logs/Nextflow-23.04.2-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.2
