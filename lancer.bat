bat@echo off
cd /d C:\champi_resultats\webmap_cueilleur

:: Démarre le serveur
start "" py -m http.server 8000

:: Attend 2 secondes
timeout /t 2 /nobreak >nul

:: Ouvre Edge en mode privé (InPrivate)
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --inprivate "http://localhost:8000/carnet_cueilleur.html"
