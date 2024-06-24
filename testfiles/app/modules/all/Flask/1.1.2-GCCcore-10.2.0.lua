help([==[

Description
===========
Flask is a lightweight WSGI web application framework. It is designed to make
getting started quick and easy, with the ability to scale up to complex
applications.
This module includes the Flask extensions: Flask-Cors


More information
================
 - Homepage: https://www.palletsprojects.com/p/flask/


Included extensions
===================
Flask-1.1.2, Flask-Cors-3.0.9, itsdangerous-1.1.0, Werkzeug-1.0.1
]==])

whatis([==[Description: 
Flask is a lightweight WSGI web application framework. It is designed to make
getting started quick and easy, with the ability to scale up to complex
applications.
This module includes the Flask extensions: Flask-Cors]==])
whatis([==[Homepage: https://www.palletsprojects.com/p/flask/]==])
whatis([==[URL: https://www.palletsprojects.com/p/flask/]==])
whatis([==[Extensions: Flask-1.1.2, Flask-Cors-3.0.9, itsdangerous-1.1.0, Werkzeug-1.0.1]==])

local root = "/app/software/Flask/1.1.2-GCCcore-10.2.0"

conflict("Flask")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFLASK", root)
setenv("EBVERSIONFLASK", "1.1.2")
setenv("EBDEVELFLASK", pathJoin(root, "logs/Flask-1.1.2-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.2
setenv("EBEXTSLISTFLASK", "itsdangerous-1.1.0,Werkzeug-1.0.1,Flask-1.1.2,Flask-Cors-3.0.9")
