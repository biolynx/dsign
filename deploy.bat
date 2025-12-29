@echo off
echo ========================================
echo     D'Sign - Deploiement sur Vercel
echo ========================================
echo.

cd /d "D:\P&ID SOFTWARE\D'SIGN"

echo [1/5] Verification de Git...
git --version >nul 2>&1
if errorlevel 1 (
    echo ERREUR: Git n'est pas installe!
    echo Installez Git depuis: https://git-scm.com/download/win
    pause
    exit /b 1
)
echo Git OK!
echo.

echo [2/5] Initialisation du depot Git...
if not exist .git (
    git init
    echo Depot Git initialise!
) else (
    echo Depot Git deja initialise!
)
echo.

echo [3/5] Ajout des fichiers...
git add .
echo Fichiers ajoutes!
echo.

echo [4/5] Creation du commit...
set /p MESSAGE="Entrez un message de commit (ou appuyez sur Entree pour utiliser le message par defaut): "
if "%MESSAGE%"=="" (
    set MESSAGE=Mise a jour du site D'Sign
)
git commit -m "%MESSAGE%"
echo Commit cree!
echo.

echo [5/5] Instructions pour GitHub...
echo.
echo ========================================
echo   PROCHAINES ETAPES :
echo ========================================
echo.
echo 1. Creez un nouveau depot sur GitHub.com :
echo    - Nom suggere: dsign-website
echo    - Visibilite: Public ou Private
echo.
echo 2. Executez ces commandes :
echo.
echo    git remote add origin https://github.com/VOTRE-USERNAME/dsign-website.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 3. Allez sur vercel.com et importez votre depot GitHub
echo.
echo ========================================
echo.

pause
