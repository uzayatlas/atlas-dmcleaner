@echo off
title Atlas DM Cleaner - EXE Builder
color 0A

echo.
echo  ██████╗ ███╗   ███╗     ██████╗██╗     ███████╗ █████╗ ███╗   ██╗██╗     ███████╗██████╗ 
echo ██╔═══██╗████╗  ██║    ██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║██║     ██╔════╝██╔══██╗
echo ██║   ██║██╔██╗ ██║    ██║     ██║     █████╗  ███████║██╔██╗ ██║██║     █████╗  ██████╔╝
echo ██║   ██║██║╚██╗██║    ██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║██║     ██╔══╝  ██╔══██╗
echo ╚██████╔╝██║ ╚████║    ╚██████╗███████╗███████╗██║  ██║██║ ╚████║███████╗███████╗██║  ██║
echo  ╚═════╝ ╚═╝  ╚═══╝     ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝  ╚═╝
echo.
echo ================================================================================
echo                           EXE BUILD SCRIPT
echo ================================================================================
echo.

echo [1/2] Gerekli paketler kuruluyor...
python -m pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo HATA: Paket kurulumu başarısız!
    pause
    exit /b 1
)

echo.
echo [2/2] Eski build dosyaları temizleniyor...
if exist build rmdir /s /q build
if exist dist rmdir /s /q dist
if exist __pycache__ rmdir /s /q __pycache__


echo.
pause
