# add assimp if available
#message(STATUS "Looking for assimp")
set(assimp_VERSION 5.3.1)
string(REPLACE "." ";" ASSIMP_VERSION_LIST ${assimp_VERSION})
list(GET ASSIMP_VERSION_LIST 0 ASSIMP_VERSION_MAJOR)
list(GET ASSIMP_VERSION_LIST 1 ASSIMP_VERSION_MINOR)
list(GET ASSIMP_VERSION_LIST 2 ASSIMP_VERSION_PATCH)

set(EXTRA_DEFINES ${EXTRA_DEFINES} "ASSIMP_VERSION_MAJOR=${ASSIMP_VERSION_MAJOR}" "ASSIMP_VERSION_MINOR=${ASSIMP_VERSION_MINOR}" "ASSIMP_VERSION_PATCH=${ASSIMP_VERSION_PATCH}" )

set(SOURCES ${SOURCES}
    assimp/assimp.cpp
)

#message(FATAL_ERROR "finished for assimp..."${assimp_FOUND})