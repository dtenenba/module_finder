help([==[

Description
===========
Nextflow is a bioinformatics workflow manager that enables the development
 of portable and reproducible workflows. It supports deploying workflows on a variety of
 execution platforms including local, HPC schedulers, AWS Batch, Google Genomics Pipelines,
 and Kubernetes.


More information
================
 - Homepage: https://github.com/nextflow-io/nextflow
]==])

whatis([==[Description: Nextflow is a bioinformatics workflow manager that enables the development
 of portable and reproducible workflows. It supports deploying workflows on a variety of
 execution platforms including local, HPC schedulers, AWS Batch, Google Genomics Pipelines,
 and Kubernetes.]==])
whatis([==[Homepage: https://github.com/nextflow-io/nextflow]==])
whatis([==[URL: https://github.com/nextflow-io/nextflow]==])

local root = "/app/software/nextflow/23.04.0"

conflict("nextflow")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNEXTFLOW", root)
setenv("EBVERSIONNEXTFLOW", "23.04.0")
setenv("EBDEVELNEXTFLOW", pathJoin(root, "logs/nextflow-23.04.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
