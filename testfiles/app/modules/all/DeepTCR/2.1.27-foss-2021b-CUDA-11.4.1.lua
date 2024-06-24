help([==[

Description
===========
DeepTCR is a python package that has a collection of unsupervised and supervised deep
 learning methods to parse TCRSeq data.


More information
================
 - Homepage: https://sidhomj.github.io/DeepTCR/


Included extensions
===================
absl-py-0.11.0, biopython-1.76, bleach-6.0.0, DeepTCR-2.1.27,
distinctipy-1.2.2, google-auth-2.17.3, google-pasta-0.2.0, h5py-3.8.0,
importlib_metadata-6.6.0, Keras_Preprocessing-1.1.2, libclang-16.0.0,
llvmlite-0.40.0, logomaker-0.8, markdown-it-py-2.2.0, mdurl-0.1.2,
numba-0.56.4, opt_einsum-3.3.0, protobuf-4.21.2, pynndescent-0.5.5, python-
dateutil-2.8.2, readme_renderer-37.3, rfc3986-2.0.0, rich-13.3.5,
seaborn-0.12.2, tensorboard_data_server-0.6.1, tensorboard_plugin_wit-1.8.0,
tensorflow_estimator-2.7.0, tensorflow_io_gcs_filesystem-0.32.0, tqdm-4.65.0,
twine-4.0.2, typing_extensions-3.7.4.3, umap-learn-0.5.3
]==])

whatis([==[Description: DeepTCR is a python package that has a collection of unsupervised and supervised deep
 learning methods to parse TCRSeq data.]==])
whatis([==[Homepage: https://sidhomj.github.io/DeepTCR/]==])
whatis([==[URL: https://sidhomj.github.io/DeepTCR/]==])
whatis([==[Extensions: absl-py-0.11.0, biopython-1.76, bleach-6.0.0, DeepTCR-2.1.27, distinctipy-1.2.2, google-auth-2.17.3, google-pasta-0.2.0, h5py-3.8.0, importlib_metadata-6.6.0, Keras_Preprocessing-1.1.2, libclang-16.0.0, llvmlite-0.40.0, logomaker-0.8, markdown-it-py-2.2.0, mdurl-0.1.2, numba-0.56.4, opt_einsum-3.3.0, protobuf-4.21.2, pynndescent-0.5.5, python-dateutil-2.8.2, readme_renderer-37.3, rfc3986-2.0.0, rich-13.3.5, seaborn-0.12.2, tensorboard_data_server-0.6.1, tensorboard_plugin_wit-1.8.0, tensorflow_estimator-2.7.0, tensorflow_io_gcs_filesystem-0.32.0, tqdm-4.65.0, twine-4.0.2, typing_extensions-3.7.4.3, umap-learn-0.5.3]==])

local root = "/app/software/DeepTCR/2.1.27-foss-2021b-CUDA-11.4.1"

conflict("DeepTCR")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2021b") ) then
    load("SciPy-bundle/2022.05-foss-2021b")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1") ) then
    load("TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1")
end

if not ( isloaded("Pillow/8.3.2-GCCcore-11.2.0") ) then
    load("Pillow/8.3.2-GCCcore-11.2.0")
end

if not ( isloaded("LLVM/12.0.1-GCCcore-11.2.0") ) then
    load("LLVM/12.0.1-GCCcore-11.2.0")
end

if not ( isloaded("tqdm/4.62.3-GCCcore-11.2.0") ) then
    load("tqdm/4.62.3-GCCcore-11.2.0")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDEEPTCR", root)
setenv("EBVERSIONDEEPTCR", "2.1.27")
setenv("EBDEVELDEEPTCR", pathJoin(root, "logs/DeepTCR-2.1.27-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
setenv("EBEXTSLISTDEEPTCR", "absl-py-0.11.0,biopython-1.76,bleach-6.0.0,distinctipy-1.2.2,google-auth-2.17.3,google-pasta-0.2.0,h5py-3.8.0,typing_extensions-3.7.4.3,importlib_metadata-6.6.0,Keras_Preprocessing-1.1.2,llvmlite-0.40.0,logomaker-0.8,numba-0.56.4,opt_einsum-3.3.0,protobuf-4.21.2,python-dateutil-2.8.2,readme_renderer-37.3,rfc3986-2.0.0,seaborn-0.12.2,tensorboard_data_server-0.6.1,tensorboard_plugin_wit-1.8.0,tensorflow_estimator-2.7.0,tensorflow_io_gcs_filesystem-0.32.0,tqdm-4.65.0,mdurl-0.1.2,markdown-it-py-2.2.0,rich-13.3.5,twine-4.0.2,pynndescent-0.5.5,umap-learn-0.5.3,libclang-16.0.0,DeepTCR-2.1.27")
