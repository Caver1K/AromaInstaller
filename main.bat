@echo off
:Driveselect
echo Enter Driveletter
set /p drive=Letter:
cd /d %drive%:

:Aroma
echo Downloading files...
curl -L -s -o payload.zip https://aroma.foryour.cafe/api/download?packages=environmentloader,wiiu-nanddumper-payload
curl -L -s -o base.zip https://aroma.foryour.cafe/api/download/base 
tar -xf base.zip >nul
tar -xf payload.zip >nul
del payload.zip >nul
del base.zip >nul
cd wiiu/environments/aroma/modules/setup
curl -L -s -o 01_sigpatches.rpx https://github.com/marco-calautti/SigpatchesModuleWiiU/releases/download/1.2/01_sigpatches.rpx
cd ..
cd ..
cd ..
cd ..
cd ..
cls 
echo Aroma files have been installed successfully!
echo Press any key to continue to Plugins...
pause >nul
goto :Plugins

:Plugins
cls

echo ====================================
echo              Plugins
echo ====================================
echo [1] Bloopair
echo [2] Inkay(Pretendo)
echo [3] FTPiiU
echo [4] SDCafiine
echo [5] Screenshot Plugin
echo [6] SwipSwapMe
echo [7] exit
echo ====================================

set /p optionmain=Option: 

if %optionmain% == 1 goto :1
if %optionmain% == 2 goto :2
if %optionmain% == 3 goto :3
if %optionmain% == 4 goto :4
if %optionmain% == 5 goto :5
if %optionmain% == 6 goto :6
if %optionmain% == 7 call exit /b

:1
cls
echo Downloading...
curl -L -s -o plugins.zip https://aroma.foryour.cafe/api/download?packages=bloopair
tar -xf plugins.zip >nul
del plugins.zip >nul
cls
IF EXIST "%cd%\wiiu\environments\aroma\modules\setup\30_bloopair.rpx" (
echo Plugin installed successfully, press any key to return...
pause >nul
) ELSE (
echo Plugin couldn't install, are you connected to the internet?
echo Press any key to return...
pause >nul
)
goto :Plugins

:2
cls
echo Downloading...
curl -L -s -o plugins.zip https://aroma.foryour.cafe/api/download?packages=inkay
tar -xf plugins.zip >nul
del plugins.zip >nul
cls
IF EXIST "%cd%\wiiu\environments\aroma\plugins\Inkay-pretendo.wps" (
echo Plugin installed successfully, press any key to return...
pause >nul
) ELSE (
echo Plugin couldn't install, are you connected to the internet?
echo Press any key to return...
pause >nul
)
goto :Plugins

:3
cls
echo Downloading...
curl -L -s -o plugins.zip https://aroma.foryour.cafe/api/download?packages=ftpiiu
tar -xf plugins.zip >nul
del plugins.zip >nul
cls
IF EXIST "%cd%\wiiu\environments\aroma\plugins\ftpiiu.wps" (
echo Plugin installed successfully, press any key to return...
pause >nul
) ELSE (
echo Plugin couldn't install, are you connected to the internet?
echo Press any key to return...
pause >nul
)
goto :Plugins

:4
cls
echo Downloading...
curl -L -s -o plugins.zip https://aroma.foryour.cafe/api/download?packages=sdcafiine
tar -xf plugins.zip >nul
del plugins.zip >nul
cls
IF EXIST "%cd%\wiiu\environments\aroma\plugins\sdcafiine.wps" (
echo Plugin installed successfully, press any key to return...
pause >nul
) ELSE (
echo Plugin couldn't install, are you connected to the internet?
echo Press any key to return...
pause >nul
)
goto :Plugins

:5
cls
echo Downloading...
curl -L -s -o plugins.zip https://aroma.foryour.cafe/api/download?packages=screenshotplugin
tar -xf plugins.zip >nul
del plugins.zip >nul
cls
IF EXIST "%cd%\wiiu\environments\aroma\plugins\screenshot.wps" (
echo Plugin installed successfully, press any key to return...
pause >nul
) ELSE (
echo Plugin couldn't install, are you connected to the internet?
echo Press any key to return...
pause >nul
)
goto :Plugins

:6
cls
echo Downloading...
curl -L -s -o plugins.zip https://aroma.foryour.cafe/api/download?packages=swipswapme
tar -xf plugins.zip >nul
del plugins.zip >nul
cls
IF EXIST "%cd%\wiiu\environments\aroma\plugins\swipswapme.wps" (
echo Plugin installed successfully, press any key to return...
pause >nul
) ELSE (
echo Plugin couldn't install, are you connected to the internet?
echo Press any key to return...
pause >nul
)
goto :Plugins

