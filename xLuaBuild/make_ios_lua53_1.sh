#/bin/bash

build_dir="build_ios"
mkdir -p $build_dir
cd $build_dir
echo "current ${PWD}"
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake -DPLATFORM=OS64 -GXcode ../
cd ..
cmake --build $build_dir --config Release
mkdir -p plugin_lua53/Plugins/iOS/
cp ${build_dir}/Release-iphoneos/libxlua.a plugin_lua53/Plugins/iOS/libxlua.a 

