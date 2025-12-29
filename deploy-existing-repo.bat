@echo off
echo ========================================
echo     D'Sign - Push vers GitHub existant
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

echo [3/5] Connexion au depot GitHub...
git remote remove origin 2>nul
git remote add origin https://github.com/biolynx/dsign.git
echo Depot distant configure: https://github.com/biolynx/dsign.git
echo.

echo [4/5] Ajout des fichiers...
git add .
echo Fichiers ajoutes!
echo.

echo [5/5] Creation du commit et push...
set /p MESSAGE="Entrez un message de commit (ou appuyez sur Entree pour le message par defaut): "
if "%MESSAGE%"=="" (
    set MESSAGE=Add D'Sign creative studio website with Tailwind CSS
)

git commit -m "%MESSAGE%"
git branch -M main
git push -u origin main --force

echo.
echo ========================================
echo   DEPLOIEMENT REUSSI !
echo ========================================
echo.
echo Votre code a ete pousse vers:
echo https://github.com/biolynx/dsign
echo.
echo PROCHAINE ETAPE - Deployer sur Vercel:
echo.
echo 1. Allez sur https://vercel.com
echo 2. Cliquez sur "Add New Project"
echo 3. Importez le depot: biolynx/dsign
echo 4. Configuration:
echo    - Framework Preset: Other
echo    - Root Directory: ./
echo    - Build Command: (laisser vide)
echo    - Output Directory: ./
echo 5. Cliquez sur "Deploy"
echo.
echo ========================================
echo.

pause
