@echo off
rem tart /b pip install -r "%CD%/requi.txt"
start /b python "%CD%/API/api.py
start  /b python "%CD%/appcuentadante.py"


rem start /b python -m http.server 9000

start  http://127.0.0.1:5000