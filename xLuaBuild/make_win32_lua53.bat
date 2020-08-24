mkdir build32 & pushd build32
cmake  -G "Visual Studio 16 2019"  -DLUAC_COMPATIBLE_FORMAT=ON ..
popd
cmake --build build32 --config Release
md plugin_lua53\Plugins\x86
copy /Y build32\Release\xlua.dll plugin_lua53\Plugins\x86\xlua.dll
pause