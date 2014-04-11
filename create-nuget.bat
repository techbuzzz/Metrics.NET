rd /S /Q .\Publishing\lib

call build.bat

md .\Publishing\lib
md .\Publishing\lib\net451
md .\Publishing\lib\net45
md .\Publishing\lib\net40

copy .\bin\release\metrics.dll .\Publishing\lib\net451\
copy .\bin\release\metrics.xml .\Publishing\lib\net451\
copy .\bin\release\metrics.pdb .\Publishing\lib\net451\

copy .\bin\MonoRelease\metrics.dll .\Publishing\lib\net45\
copy .\bin\MonoRelease\metrics.xml .\Publishing\lib\net45\
copy .\bin\MonoRelease\metrics.pdb .\Publishing\lib\net45\

copy .\bin\Net4.0Release\metrics.dll .\Publishing\lib\net40\
copy .\bin\Net4.0Release\metrics.xml .\Publishing\lib\net40\
copy .\bin\Net4.0Release\metrics.pdb .\Publishing\lib\net40\

copy .\bin\release\nancy.metrics.dll .\Publishing\lib\net451\
copy .\bin\release\nancy.metrics.xml .\Publishing\lib\net451\
copy .\bin\release\nancy.metrics.pdb .\Publishing\lib\net451\

copy .\bin\MonoRelease\nancy.metrics.dll .\Publishing\lib\net45\
copy .\bin\MonoRelease\nancy.metrics.xml .\Publishing\lib\net45\
copy .\bin\MonoRelease\nancy.metrics.pdb .\Publishing\lib\net45\

copy .\bin\Net4.0Release\nancy.metrics.dll .\Publishing\lib\net40\
copy .\bin\Net4.0Release\nancy.metrics.xml .\Publishing\lib\net40\
copy .\bin\Net4.0Release\nancy.metrics.pdb .\Publishing\lib\net40\

.\.nuget\NuGet.exe pack .\Publishing\Metrics.Net.nuspec -OutputDirectory .\Publishing
.\.nuget\NuGet.exe pack .\Publishing\NancyFx.Metrics.nuspec -OutputDirectory .\Publishing