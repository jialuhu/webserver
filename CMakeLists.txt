cmake_minimum_required(VERSION 3.13)
project(TinyWebServer)

set(CMAKE_CXX_STANDARD 14)

aux_source_directory(src/base SOURCE_BASE)
aux_source_directory(src/net SOURCE_NET)
aux_source_directory(src/config SOURCE_CONFIG)
aux_source_directory(src/http SOURCE_HTTP)
aux_source_directory(src/cgi SOURCE_CGI)
#target_link_libraries(webserver Threads::Threads)
add_executable(webserver
        src/main.cpp
        ${SOURCE_BASE}
        ${SOURCE_CONFIG}
        ${SOURCE_NET}
        ${SOURCE_HTTP}
        )
#add_executable(add ${SOURCE_CGI})