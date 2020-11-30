@ECHO OFF

forfiles /P ..\tspi-message-project\.docker\grafana\plugins\akinnear-pr0ps-trackmap-panel /M * /C "cmd /c if @isdir==FALSE del @file"
forfiles /P ..\tspi-message-project\.docker\grafana\plugins\akinnear-pr0ps-trackmap-panel /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file"

xcopy /Q /S .\dist\*.* ..\tspi-message-project\.docker\grafana\plugins\akinnear-pr0ps-trackmap-panel
