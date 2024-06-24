help([==[

Description
===========
PyTorch Lightning is the lightweight PyTorch wrapper for ML researchers.


More information
================
 - Homepage: https://pytorchlightning.ai


Included extensions
===================
aiobotocore-2.9.1, aioitertools-0.11.0, anyio-4.2.0, arrow-1.3.0,
blessed-1.20.0, boto3-1.33.13, botocore-1.33.13, commonmark-0.9.1,
croniter-2.0.1, editor-1.6.5, exceptiongroup-1.2.0, fastapi-0.109.0,
fsspec-2023.12.2, h11-0.14.0, inquirer-3.2.1, itsdangerous-2.1.2,
jmespath-1.0.1, lightning-utilities-0.10.1, lightning_cloud-0.5.64, markdown-
it-py-3.0.0, mdurl-0.1.2, PyJWT-2.8.0, python-editor-1.0.4,
python_multipart-0.0.6, pytorch-lightning-2.2.0.post0, readchar-4.0.5,
rich-13.7.0, runs-1.2.0, s3fs-2023.12.2, s3transfer-0.8.2, sniffio-1.3.0,
starlette-0.35.1, starsessions-2.1.2, torchmetrics-1.3.0.post0,
traitlets-5.14.1, types-python-dateutil-2.8.19.20240106, uvicorn-0.26.0,
websocket-client-1.7.0, wrapt-1.16.0, xmod-1.8.1
]==])

whatis([==[Description: PyTorch Lightning is the lightweight PyTorch wrapper for ML researchers.]==])
whatis([==[Homepage: https://pytorchlightning.ai]==])
whatis([==[URL: https://pytorchlightning.ai]==])
whatis([==[Extensions: aiobotocore-2.9.1, aioitertools-0.11.0, anyio-4.2.0, arrow-1.3.0, blessed-1.20.0, boto3-1.33.13, botocore-1.33.13, commonmark-0.9.1, croniter-2.0.1, editor-1.6.5, exceptiongroup-1.2.0, fastapi-0.109.0, fsspec-2023.12.2, h11-0.14.0, inquirer-3.2.1, itsdangerous-2.1.2, jmespath-1.0.1, lightning-utilities-0.10.1, lightning_cloud-0.5.64, markdown-it-py-3.0.0, mdurl-0.1.2, PyJWT-2.8.0, python-editor-1.0.4, python_multipart-0.0.6, pytorch-lightning-2.2.0.post0, readchar-4.0.5, rich-13.7.0, runs-1.2.0, s3fs-2023.12.2, s3transfer-0.8.2, sniffio-1.3.0, starlette-0.35.1, starsessions-2.1.2, torchmetrics-1.3.0.post0, traitlets-5.14.1, types-python-dateutil-2.8.19.20240106, uvicorn-0.26.0, websocket-client-1.7.0, wrapt-1.16.0, xmod-1.8.1]==])

local root = "/app/software/PyTorch-Lightning/2.2.0.post0-foss-2023a-CUDA-12.1.1"

conflict("PyTorch-Lightning")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("CUDA/12.1.1") ) then
    load("CUDA/12.1.1")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("aiohttp/3.8.5-GCCcore-12.3.0") ) then
    load("aiohttp/3.8.5-GCCcore-12.3.0")
end

if not ( isloaded("BeautifulSoup/4.12.2-GCCcore-12.3.0") ) then
    load("BeautifulSoup/4.12.2-GCCcore-12.3.0")
end

if not ( isloaded("deepdiff/6.7.1-GCCcore-12.3.0") ) then
    load("deepdiff/6.7.1-GCCcore-12.3.0")
end

if not ( isloaded("PyTorch/2.1.2-foss-2023a-CUDA-12.1.1") ) then
    load("PyTorch/2.1.2-foss-2023a-CUDA-12.1.1")
end

if not ( isloaded("tqdm/4.66.1-GCCcore-12.3.0") ) then
    load("tqdm/4.66.1-GCCcore-12.3.0")
end

if not ( isloaded("tensorboardX/2.6.2.2-foss-2023a") ) then
    load("tensorboardX/2.6.2.2-foss-2023a")
end

if not ( isloaded("pydantic/2.5.3-GCCcore-12.3.0") ) then
    load("pydantic/2.5.3-GCCcore-12.3.0")
end

if not ( isloaded("typing-extensions/4.9.0-GCCcore-12.3.0") ) then
    load("typing-extensions/4.9.0-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTORCHMINLIGHTNING", root)
setenv("EBVERSIONPYTORCHMINLIGHTNING", "2.2.0.post0")
setenv("EBDEVELPYTORCHMINLIGHTNING", pathJoin(root, "logs/PyTorch-Lightning-2.2.0.post0-foss-2023a-CUDA-12.1.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTPYTORCHMINLIGHTNING", "commonmark-0.9.1,mdurl-0.1.2,markdown-it-py-3.0.0,rich-13.7.0,PyJWT-2.8.0,starlette-0.35.1,fastapi-0.109.0,sniffio-1.3.0,exceptiongroup-1.2.0,anyio-4.2.0,websocket-client-1.7.0,python_multipart-0.0.6,h11-0.14.0,uvicorn-0.26.0,lightning_cloud-0.5.64,itsdangerous-2.1.2,starsessions-2.1.2,fsspec-2023.12.2,croniter-2.0.1,traitlets-5.14.1,types-python-dateutil-2.8.19.20240106,arrow-1.3.0,lightning-utilities-0.10.1,blessed-1.20.0,python-editor-1.0.4,readchar-4.0.5,runs-1.2.0,xmod-1.8.1,editor-1.6.5,inquirer-3.2.1,wrapt-1.16.0,aioitertools-0.11.0,botocore-1.33.13,jmespath-1.0.1,s3transfer-0.8.2,boto3-1.33.13,aiobotocore-2.9.1,s3fs-2023.12.2,torchmetrics-1.3.0.post0,pytorch-lightning-2.2.0.post0")
