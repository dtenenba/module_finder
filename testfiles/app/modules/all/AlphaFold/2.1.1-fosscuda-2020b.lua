help([==[

Description
===========
AlphaFold can predict protein structures with atomic accuracy even where no similar structure is known


More information
================
 - Homepage: https://deepmind.com/research/case-studies/alphafold


Included extensions
===================
chex-0.0.8, contextlib2-21.6.0, dm-haiku-0.0.4, dm-tree-0.1.6, docker-5.0.0,
immutabledict-2.1.0, ml_collections-0.1.0, PDBFixer-1.7, tabulate-0.8.9,
toolz-0.11.1, websocket-client-1.2.1
]==])

whatis([==[Description: AlphaFold can predict protein structures with atomic accuracy even where no similar structure is known]==])
whatis([==[Homepage: https://deepmind.com/research/case-studies/alphafold]==])
whatis([==[URL: https://deepmind.com/research/case-studies/alphafold]==])
whatis([==[Extensions: chex-0.0.8, contextlib2-21.6.0, dm-haiku-0.0.4, dm-tree-0.1.6, docker-5.0.0, immutabledict-2.1.0, ml_collections-0.1.0, PDBFixer-1.7, tabulate-0.8.9, toolz-0.11.1, websocket-client-1.2.1]==])

local root = "/app/software/AlphaFold/2.1.1-fosscuda-2020b"

conflict("AlphaFold")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-fosscuda-2020b") ) then
    load("SciPy-bundle/2020.11-fosscuda-2020b")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("TensorFlow/2.4.1-fosscuda-2020b") ) then
    load("TensorFlow/2.4.1-fosscuda-2020b")
end

if not ( isloaded("Biopython/1.78-fosscuda-2020b") ) then
    load("Biopython/1.78-fosscuda-2020b")
end

if not ( isloaded("HH-suite/3.3.0-gompic-2020b") ) then
    load("HH-suite/3.3.0-gompic-2020b")
end

if not ( isloaded("HMMER/3.3.2-gompic-2020b") ) then
    load("HMMER/3.3.2-gompic-2020b")
end

if not ( isloaded("Kalign/3.3.1-GCCcore-10.2.0") ) then
    load("Kalign/3.3.1-GCCcore-10.2.0")
end

if not ( isloaded("jax/0.2.19-fosscuda-2020b") ) then
    load("jax/0.2.19-fosscuda-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTALPHAFOLD", root)
setenv("EBVERSIONALPHAFOLD", "2.1.1")
setenv("EBDEVELALPHAFOLD", pathJoin(root, "logs/AlphaFold-2.1.1-fosscuda-2020b-easybuild-devel"))
setenv("TF_FORCE_UNIFIED_MEMORY", "1")
setenv("XLA_PYTHON_CLIENT_MEM_FRACTION", "4.0")
setenv("OPENMM_RELAX", "CUDA")
setenv("ALPHAFOLD_DATA_DIR", "/shared/biodata/ngs/Reference/protein")
setenv("ALPHAFOLD_DATA_PATH", "/shared/biodata/ngs/Reference/protein")
prepend_path("OPENMM_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("OPENMM_LIB_PATH", pathJoin(root, "lib"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.0
setenv("EBEXTSLISTALPHAFOLD", "PDBFixer-1.7,toolz-0.11.1,chex-0.0.8,tabulate-0.8.9,dm-haiku-0.0.4,dm-tree-0.1.6,websocket-client-1.2.1,docker-5.0.0,immutabledict-2.1.0,contextlib2-21.6.0,ml_collections-0.1.0")
