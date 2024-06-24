help([==[

Description
===========
TensorBoard is a suite of web applications for inspecting and understanding your TensorFlow runs
and graphs.


More information
================
 - Homepage: https://github.com/tensorflow/tensorboard


Included extensions
===================
absl-py-1.0.0, cachetools-5.0.0, google-auth-2.5.0, google-auth-2.5.0, google-
auth-oauthlib-0.4.6, grpcio-1.43.0, importlib_metadata-4.10.1, Markdown-3.3.6,
oauthlib-3.1.1, pyasn1-modules-0.2.8, requests-oauthlib-1.3.0, rsa-4.8,
tensorboard-2.8.0, tensorboard_data_server-0.6.1,
tensorboard_plugin_wit-1.8.1, Werkzeug-2.0.2
]==])

whatis([==[Description: TensorBoard is a suite of web applications for inspecting and understanding your TensorFlow runs
and graphs.]==])
whatis([==[Homepage: https://github.com/tensorflow/tensorboard]==])
whatis([==[URL: https://github.com/tensorflow/tensorboard]==])
whatis([==[Extensions: absl-py-1.0.0, cachetools-5.0.0, google-auth-2.5.0, google-auth-2.5.0, google-auth-oauthlib-0.4.6, grpcio-1.43.0, importlib_metadata-4.10.1, Markdown-3.3.6, oauthlib-3.1.1, pyasn1-modules-0.2.8, requests-oauthlib-1.3.0, rsa-4.8, tensorboard-2.8.0, tensorboard_data_server-0.6.1, tensorboard_plugin_wit-1.8.1, Werkzeug-2.0.2]==])

local root = "/app/software/tensorboard/2.8.0-foss-2021a"

conflict("tensorboard")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

if not ( isloaded("protobuf-python/3.17.3-GCCcore-10.3.0") ) then
    load("protobuf-python/3.17.3-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORBOARD", root)
setenv("EBVERSIONTENSORBOARD", "2.8.0")
setenv("EBDEVELTENSORBOARD", pathJoin(root, "logs/tensorboard-2.8.0-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTTENSORBOARD", "absl-py-1.0.0,cachetools-5.0.0,pyasn1-modules-0.2.8,rsa-4.8,google-auth-2.5.0,oauthlib-3.1.1,requests-oauthlib-1.3.0,google-auth-2.5.0,google-auth-oauthlib-0.4.6,grpcio-1.43.0,importlib_metadata-4.10.1,Markdown-3.3.6,tensorboard_data_server-0.6.1,tensorboard_plugin_wit-1.8.1,Werkzeug-2.0.2,tensorboard-2.8.0")
