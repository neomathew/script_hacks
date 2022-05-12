for /F %%I in ('curl https://commondatastorage.googleapis.com/chromium-browser-snapshots/Win/LAST_CHANGE') do set LATEST=%%I
echo %LATEST%
curl --silent -L -O "http://commondatastorage.googleapis.com/chromium-browser-snapshots/Win/%LATEST%/chrome-win.zip"
ping 127.0.0.1
copy "chrome-win.zip" "%CD%\chrome-win-copy.zip" /Y
ping 127.0.0.1
tar -cvzf "chrome-win-copy.zip" "%CD%\chrome-win"
