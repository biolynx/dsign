@echo off
echo ========================================
echo  FIX ERREUR 404 et DEPLOIEMENT PROPRE
echo ========================================
echo.

cd /d "D:\P&ID SOFTWARE\D'SIGN"

echo [1/7] Nettoyage des fichiers temporaires...
if exist .git (
    echo Suppression de .git...
    rmdir /s /q .git
)
if exist .vercel (
    echo Suppression de .vercel...
    rmdir /s /q .vercel
)
echo Nettoyage termine!
echo.

echo [2/7] Verification de Git...
git --version >nul 2>&1
if errorlevel 1 (
    echo ERREUR: Git n'est pas installe!
    echo Installez Git depuis: https://git-scm.com/download/win
    pause
    exit /b 1
)
echo Git OK!
echo.

echo [3/7] Verification de la structure...
if not exist index.html (
    echo ERREUR: index.html n'existe pas!
    pause
    exit /b 1
)
if not exist vercel.json (
    echo ERREUR: vercel.json n'existe pas!
    pause
    exit /b 1
)
echo Structure OK!
echo.

echo [4/7] Initialisation Git...
git init
git config core.autocrlf false
echo Git initialise!
echo.

echo [5/7] Ajout des fichiers...
git add .
echo Fichiers ajoutes!
echo.

echo [6/7] Creation du commit...
git commit -m "Fix: Clean deployment configuration for Vercel"
echo Commit cree!
echo.

echo [7/7] Configuration du depot distant...
git remote add origin https://github.com/biolynx/dsign.git
git branch -M main
echo Depot configure!
echo.

echo ========================================
echo   PRET POUR LE PUSH !
echo ========================================
echo.
echo Voulez-vous pousser vers GitHub maintenant ?
echo (Cela va ECRASER le contenu actuel du depot)
echo.
choice /C ON /M "Pousser vers GitHub"

if errorlevel 2 (
    echo.
    echo Annule. Pour pousser manuellement plus tard:
    echo   git push -u origin main --force
    echo.
    pause
    exit /b 0
)

echo.
echo Push en cours...
git push -u origin main --force

if errorlevel 1 (
    echo.
    echo ERREUR lors du push!
    echo.
    echo Solutions:
    echo 1. Verifiez votre connexion internet
    echo 2. Verifiez vos identifiants GitHub
    echo 3. Executez manuellement: git push -u origin main --force
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo   PUSH REUSSI !
echo ========================================
echo.
echo Votre code est sur: https://github.com/biolynx/dsign
echo.
echo PROCHAINES ETAPES:
echo.
echo 1. Allez sur https://vercel.com/dashboard
echo.
echo 2. SI vous avez deja un projet "dsign":
echo    - Ouvrez-le
echo    - Settings ^> General ^> Delete Project
echo.
echo 3. Cliquez sur "Add New..." ^> "Project"
echo.
echo 4. Importez "biolynx/dsign"
echo.
echo 5. NE CHANGEZ RIEN dans la configuration
echo    (laissez tout par defaut)
echo.
echo 6. Cliquez "Deploy"
echo.
echo 7. Attendez 1-2 minutes
echo.
echo 8. Votre site sera en ligne !
echo.
echo ========================================
echo.

pause
