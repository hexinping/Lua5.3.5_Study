cd  %~dp0
mkdir build64 & pushd build64
cmake -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 16 2019" ..
IF %ERRORLEVEL% NEQ 0 cmake -DLUAC_COMPATIBLE_FORMAT=ON --build build64 -G "Visual Studio 16 2019" ..
popd
cmake --build build64 --config Release
pause