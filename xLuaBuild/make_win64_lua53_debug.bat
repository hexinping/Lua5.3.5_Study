mkdir build64 & pushd build64
cmake  -G "Visual Studio 16 2019" ..
popd
cmake  --build build64 --config Debug 
md plugin_lua53\Plugins\x86_64
copy /Y build64\Release\xlua.dll plugin_lua53\Plugins\x86_64\xlua.dll
pause