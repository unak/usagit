@echo off
setlocal
set ug=%0
set dir=%~dp0

if /i "%1" neq "" goto subcmd
%dir%usagit-help.cmd
goto exit

:subcmd
set subcmd=%1
shift
set cmd=%dir%usagit-%subcmd%.cmd

if not exist %cmd% goto unknown
%cmd% %*
goto exit

:unknown
echo %ug%: unknown subcommand '%subcmd%'
%dir%usagit-help.cmd

:exit
endlocal
