help([==[

Description
===========
Ruby is a dynamic, open source programming language with
 a focus on simplicity and productivity. It has an elegant syntax that is
 natural to read and easy to write.


More information
================
 - Homepage: https://www.ruby-lang.org


Included extensions
===================
activesupport-5.2.4.2, addressable-2.7.0, arr-pm-0.0.10, backports-3.17.0,
bundler-2.1.4, cabin-0.9.0, childprocess-3.0.0, clamp-1.3.1, concurrent-
ruby-1.1.6, connection_pool-2.2.2, diff-lcs-1.3, ethon-0.12.0, faraday-0.17.3,
faraday_middleware-0.14.0, ffi-1.12.2, gh-0.16.0, highline-2.0.3, i18n-1.8.2,
json-2.2.0, launchy-2.5.0, minitest-5.14.0, multi_json-1.14.1, multipart-
post-1.2.0, mustermann-1.1.1, net-http-persistent-2.9.4, net-http-
pipeline-1.0.1, public_suffix-4.0.3, pusher-client-0.6.2, rack-2.2.2, rack-
protection-2.0.8.1, rack-test-1.1.0, rspec-3.9.0, rspec-core-3.9.1, rspec-
expectations-3.9.1, rspec-mocks-3.9.1, rspec-support-3.9.2,
ruby2_keywords-0.0.2, sinatra-2.0.8.1, thread_safe-0.3.6, tilt-2.0.10,
typhoeus-1.3.1, tzinfo-1.2.7, websocket-1.2.8
]==])

whatis([==[Description: Ruby is a dynamic, open source programming language with
 a focus on simplicity and productivity. It has an elegant syntax that is
 natural to read and easy to write.]==])
whatis([==[Homepage: https://www.ruby-lang.org]==])
whatis([==[URL: https://www.ruby-lang.org]==])
whatis([==[Extensions: activesupport-5.2.4.2, addressable-2.7.0, arr-pm-0.0.10, backports-3.17.0, bundler-2.1.4, cabin-0.9.0, childprocess-3.0.0, clamp-1.3.1, concurrent-ruby-1.1.6, connection_pool-2.2.2, diff-lcs-1.3, ethon-0.12.0, faraday-0.17.3, faraday_middleware-0.14.0, ffi-1.12.2, gh-0.16.0, highline-2.0.3, i18n-1.8.2, json-2.2.0, launchy-2.5.0, minitest-5.14.0, multi_json-1.14.1, multipart-post-1.2.0, mustermann-1.1.1, net-http-persistent-2.9.4, net-http-pipeline-1.0.1, public_suffix-4.0.3, pusher-client-0.6.2, rack-2.2.2, rack-protection-2.0.8.1, rack-test-1.1.0, rspec-3.9.0, rspec-core-3.9.1, rspec-expectations-3.9.1, rspec-mocks-3.9.1, rspec-support-3.9.2, ruby2_keywords-0.0.2, sinatra-2.0.8.1, thread_safe-0.3.6, tilt-2.0.10, typhoeus-1.3.1, tzinfo-1.2.7, websocket-1.2.8]==])

local root = "/app/software/Ruby/2.7.1-GCCcore-8.3.0"

conflict("Ruby")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTRUBY", root)
setenv("EBVERSIONRUBY", "2.7.1")
setenv("EBDEVELRUBY", pathJoin(root, "logs/Ruby-2.7.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTRUBY", "ffi-1.12.2,childprocess-3.0.0,json-2.2.0,cabin-0.9.0,backports-3.17.0,arr-pm-0.0.10,clamp-1.3.1,multipart-post-1.2.0,faraday-0.17.3,faraday_middleware-0.14.0,highline-2.0.3,net-http-pipeline-1.0.1,connection_pool-2.2.2,net-http-persistent-2.9.4,multi_json-1.14.1,public_suffix-4.0.3,addressable-2.7.0,concurrent-ruby-1.1.6,i18n-1.8.2,minitest-5.14.0,thread_safe-0.3.6,tzinfo-1.2.7,activesupport-5.2.4.2,gh-0.16.0,launchy-2.5.0,ethon-0.12.0,typhoeus-1.3.1,websocket-1.2.8,pusher-client-0.6.2,diff-lcs-1.3,rspec-support-3.9.2,rspec-mocks-3.9.1,rspec-expectations-3.9.1,rspec-core-3.9.1,rspec-3.9.0,rack-2.2.2,rack-protection-2.0.8.1,tilt-2.0.10,ruby2_keywords-0.0.2,mustermann-1.1.1,sinatra-2.0.8.1,rack-test-1.1.0,bundler-2.1.4")
