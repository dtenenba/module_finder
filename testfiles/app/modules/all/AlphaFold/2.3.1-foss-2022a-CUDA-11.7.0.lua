help([==[

Description
===========
AlphaFold can predict protein structures with atomic accuracy even where no similar structure is known


More information
================
 - Homepage: https://deepmind.com/research/case-studies/alphafold


Included extensions
===================
chex-0.1.6, contextlib2-21.6.0, dm-haiku-0.0.9, dm-tree-0.1.8, docker-6.0.1,
immutabledict-2.2.3, jmp-0.0.4, ml_collections-0.1.1, PDBFixer-1.8.1,
tabulate-0.9.0, toolz-0.12.0, websocket-client-1.5.1
]==])

whatis([==[Description: AlphaFold can predict protein structures with atomic accuracy even where no similar structure is known]==])
whatis([==[Homepage: https://deepmind.com/research/case-studies/alphafold]==])
whatis([==[URL: https://deepmind.com/research/case-studies/alphafold]==])
whatis([==[Extensions: chex-0.1.6, contextlib2-21.6.0, dm-haiku-0.0.9, dm-tree-0.1.8, docker-6.0.1, immutabledict-2.2.3, jmp-0.0.4, ml_collections-0.1.1, PDBFixer-1.8.1, tabulate-0.9.0, toolz-0.12.0, websocket-client-1.5.1]==])

local root = "/app/software/AlphaFold/2.3.1-foss-2022a-CUDA-11.7.0"

conflict("AlphaFold")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2022a") ) then
    load("SciPy-bundle/2022.05-foss-2022a")
end

if not ( isloaded("PyYAML/6.0-GCCcore-11.3.0") ) then
    load("PyYAML/6.0-GCCcore-11.3.0")
end

if not ( isloaded("TensorFlow/2.11.0-foss-2022a-CUDA-11.7.0") ) then
    load("TensorFlow/2.11.0-foss-2022a-CUDA-11.7.0")
end

if not ( isloaded("Biopython/1.79-foss-2022a") ) then
    load("Biopython/1.79-foss-2022a")
end

if not ( isloaded("HH-suite/3.3.0-gompi-2022a") ) then
    load("HH-suite/3.3.0-gompi-2022a")
end

if not ( isloaded("HMMER/3.3.2-gompi-2022a") ) then
    load("HMMER/3.3.2-gompi-2022a")
end

if not ( isloaded("Kalign/3.3.5-GCCcore-11.3.0") ) then
    load("Kalign/3.3.5-GCCcore-11.3.0")
end

if not ( isloaded("jax/0.3.25-foss-2022a-CUDA-11.7.0") ) then
    load("jax/0.3.25-foss-2022a-CUDA-11.7.0")
end

if not ( isloaded("UCX-CUDA/1.12.1-GCCcore-11.3.0-CUDA-11.7.0") ) then
    load("UCX-CUDA/1.12.1-GCCcore-11.3.0-CUDA-11.7.0")
end

if not ( isloaded("cuDNN/8.4.1.50-CUDA-11.7.0") ) then
    load("cuDNN/8.4.1.50-CUDA-11.7.0")
end

if not ( isloaded("NCCL/2.12.12-GCCcore-11.3.0-CUDA-11.7.0") ) then
    load("NCCL/2.12.12-GCCcore-11.3.0-CUDA-11.7.0")
end

if not ( isloaded("OpenMM/8.0.0-foss-2022a-CUDA-11.7.0") ) then
    load("OpenMM/8.0.0-foss-2022a-CUDA-11.7.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTALPHAFOLD", root)
setenv("EBVERSIONALPHAFOLD", "2.3.1")
setenv("EBDEVELALPHAFOLD", pathJoin(root, "logs/AlphaFold-2.3.1-foss-2022a-CUDA-11.7.0-easybuild-devel"))

setenv("TF_FORCE_UNIFIED_MEMORY", "1")
setenv("XLA_PYTHON_CLIENT_MEM_FRACTION", "3")
setenv("OPENMM_RELAX", "CUDA")
setenv("ALPHAFOLD_DATA_DIR", "/shared/biodata/ngs/Reference/protein")
setenv("ALPHAFOLD_DATA_PATH", "/shared/biodata/ngs/Reference/protein")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTALPHAFOLD", "PDBFixer-1.8.1,toolz-0.12.0,chex-0.1.6,tabulate-0.9.0,jmp-0.0.4,dm-haiku-0.0.9,dm-tree-0.1.8,websocket-client-1.5.1,docker-6.0.1,immutabledict-2.2.3,contextlib2-21.6.0,ml_collections-0.1.1")
