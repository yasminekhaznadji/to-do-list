@echo off
REM Chemin vers le SDK JavaFX
set JAVAFX_LIB="C:\javafx\javafx-sdk-21.0.12\lib\*"

REM Créer le dossier bin s'il n'existe pas
if not exist bin (
    mkdir bin
)

REM Compiler les fichiers .java de plusieurs dossiers sources vers bin, avec le chemin JavaFX dans le classpath
javac -d bin -cp %JAVAFX_LIB% src\util\*.java src\Controller\*.java src\view\*.java src\Model\*.java

REM Afficher un message de fin
if %errorlevel%==0 (
    echo Compilation terminee avec succes.
) else (
    echo Erreur lors de la compilation.
)

pauses