@echo off
setlocal

set /p commitDate=Enter the commit date (YYYY-MM-DD): 

echo Updating CHANGELOG.md...
echo %commitDate% - Changes made >> CHANGELOG.md

echo Generating commit diff...
git add .

echo Committing changes...
git commit --date="%commitDate%T12:00:00" -m "Initial commit"

echo Done.
endlocal