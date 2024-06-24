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
activesupport-5.2.4.5, addressable-2.7.0, arr-pm-0.0.10, backports-3.20.2,
bundler-2.2.11, cabin-0.9.0, childprocess-4.0.0, clamp-1.3.2, concurrent-
ruby-1.1.8, connection_pool-2.2.3, diff-lcs-1.4.4, ethon-0.12.0,
faraday-1.3.0, faraday-net_http-1.0.1, faraday_middleware-1.0.0, ffi-1.14.2,
gh-0.18.0, highline-2.0.3, i18n-1.8.9, json-2.5.1, launchy-2.5.0,
minitest-5.14.3, multi_json-1.15.0, multipart-post-2.1.1, mustermann-1.1.1,
net-http-persistent-2.9.4, net-http-pipeline-1.0.1, public_suffix-4.0.6,
pusher-client-0.6.2, rack-2.2.3, rack-protection-2.1.0, rack-test-1.1.0,
rspec-3.10.0, rspec-core-3.10.1, rspec-expectations-3.10.1, rspec-
mocks-3.10.2, rspec-support-3.10.2, ruby2_keywords-0.0.4, sinatra-2.1.0,
thread_safe-0.3.6, tilt-2.0.10, typhoeus-1.4.0, tzinfo-1.2.9, websocket-1.2.9,
zeitwerk-2.4.2
]==])

whatis([==[Description: Ruby is a dynamic, open source programming language with
 a focus on simplicity and productivity. It has an elegant syntax that is
 natural to read and easy to write.]==])
whatis([==[Homepage: https://www.ruby-lang.org]==])
whatis([==[URL: https://www.ruby-lang.org]==])
whatis([==[Extensions: activesupport-5.2.4.5, addressable-2.7.0, arr-pm-0.0.10, backports-3.20.2, bundler-2.2.11, cabin-0.9.0, childprocess-4.0.0, clamp-1.3.2, concurrent-ruby-1.1.8, connection_pool-2.2.3, diff-lcs-1.4.4, ethon-0.12.0, faraday-1.3.0, faraday-net_http-1.0.1, faraday_middleware-1.0.0, ffi-1.14.2, gh-0.18.0, highline-2.0.3, i18n-1.8.9, json-2.5.1, launchy-2.5.0, minitest-5.14.3, multi_json-1.15.0, multipart-post-2.1.1, mustermann-1.1.1, net-http-persistent-2.9.4, net-http-pipeline-1.0.1, public_suffix-4.0.6, pusher-client-0.6.2, rack-2.2.3, rack-protection-2.1.0, rack-test-1.1.0, rspec-3.10.0, rspec-core-3.10.1, rspec-expectations-3.10.1, rspec-mocks-3.10.2, rspec-support-3.10.2, ruby2_keywords-0.0.4, sinatra-2.1.0, thread_safe-0.3.6, tilt-2.0.10, typhoeus-1.4.0, tzinfo-1.2.9, websocket-1.2.9, zeitwerk-2.4.2]==])

local root = "/app/software/Ruby/2.7.2-GCCcore-10.2.0"

conflict("Ruby")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
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
setenv("EBVERSIONRUBY", "2.7.2")
setenv("EBDEVELRUBY", pathJoin(root, "logs/Ruby-2.7.2-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTRUBY", "ffi-1.14.2,childprocess-4.0.0,json-2.5.1,cabin-0.9.0,backports-3.20.2,arr-pm-0.0.10,clamp-1.3.2,multipart-post-2.1.1,ruby2_keywords-0.0.4,faraday-net_http-1.0.1,faraday-1.3.0,faraday_middleware-1.0.0,highline-2.0.3,net-http-pipeline-1.0.1,connection_pool-2.2.3,net-http-persistent-2.9.4,multi_json-1.15.0,public_suffix-4.0.6,addressable-2.7.0,concurrent-ruby-1.1.8,i18n-1.8.9,minitest-5.14.3,thread_safe-0.3.6,tzinfo-1.2.9,zeitwerk-2.4.2,activesupport-5.2.4.5,gh-0.18.0,launchy-2.5.0,ethon-0.12.0,typhoeus-1.4.0,websocket-1.2.9,pusher-client-0.6.2,diff-lcs-1.4.4,rspec-support-3.10.2,rspec-mocks-3.10.2,rspec-expectations-3.10.1,rspec-core-3.10.1,rspec-3.10.0,rack-2.2.3,rack-protection-2.1.0,tilt-2.0.10,mustermann-1.1.1,sinatra-2.1.0,rack-test-1.1.0,bundler-2.2.11")
