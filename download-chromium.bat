for /F %%I in ('curl https://commondatastorage.googleapis.com/chromium-browser-snapshots/Win/LAST_CHANGE') do set LATEST=%%I
echo %LATEST%
curl --silent -L -O "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Win/%LATEST%/chrome-win.zip"
copy "chrome-win.zip" "%CD%\chrome-win-copy.zip" /Y
tar -cvzf "chrome-win-copy.zip" "%CD%\chrome-win"