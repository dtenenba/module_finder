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

local root = "/app/software/nextflow/20.06.0-edge"

conflict("nextflow")

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNEXTFLOW", root)
setenv("EBVERSIONNEXTFLOW", "20.06.0-edge")
setenv("EBDEVELNEXTFLOW", pathJoin(root, "logs/nextflow-20.06.0-edge-easybuild-devel"))

setenv("JAVA_HOME", "$EBROOTJAVA")
prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
