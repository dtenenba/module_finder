help([==[

Description
===========
The Xenium In Situ software suite is a set of software
 applications for analyzing and visualizing in situ gene expression data
 produced by the Xenium Analyzer.


More information
================
 - Homepage: https://www.10xgenomics.com/support/software/xenium-ranger
]==])

whatis([==[Description: The Xenium In Situ software suite is a set of software
 applications for analyzing and visualizing in situ gene expression data
 produced by the Xenium Analyzer.]==])
whatis([==[Homepage: https://www.10xgenomics.com/support/software/xenium-ranger]==])
whatis([==[URL: https://www.10xgenomics.com/support/software/xenium-ranger]==])

local root = "/app/software/XeniumRanger/1.6.0"

conflict("XeniumRanger")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTXENIUMRANGER", root)
setenv("EBVERSIONXENIUMRANGER", "1.6.0")
setenv("EBDEVELXENIUMRANGER", pathJoin(root, "logs/XeniumRanger-1.6.0-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[
    XeniumRanger should be run in cluster mode:
    

    Using '--jobmode=slurm' will run in cluster mode using the default SLURM template file:
        
        xeniumranger --jobmode=slurm ...
    
    The default template should be sufficient for most use cases.


    Alternatively '--jobmode=<templatefile>' can be used with the path to a custom template file if needed:
        
        To create a custom template, copy '/app/software/XeniumRanger/1.6.0/external/martian/jobmanagers/slurm.template' to a location of your choice and edit as necessary.


    Running XeniumRanger in cluster mode will automatically create and submit jobs to the cluster
    
    The main 'xeniumranger' command can be run inside a cluster job, but can also be run directly on one of the 'rhino' hosts


    See https://www.10xgenomics.com/support/software/xenium-ranger/advanced/XR-cluster-mode for more information on cluster mode
]==])
end
-- Built with EasyBuild version 4.8.1
