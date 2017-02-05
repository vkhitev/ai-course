@echo off
REM set C_INCLUDE_PATH=c:\PROGRA~1\GCL-2.6.7-ANSI\lib\gcl-2.6.7\h
path c:\PROGRA~1\GCL-2.6.7-ANSI\mingw\bin;c:\PROGRA~1\GCL-2.6.7-ANSI\lib\gcl-2.6.7\unixport;%PATH%
cd %cd%
start c:\PROGRA~1\GCL-2.6.7-ANSI\lib\gcl-2.6.7\unixport\saved_ansi_gcl.exe -dir c:/PROGRA~1/GCL-2.6.7-ANSI/lib/gcl-2.6.7/unixport/ -libdir c:/PROGRA~1/GCL-2.6.7-ANSI/lib/gcl-2.6.7/ -eval "(setq si::*allow-gzipped-file* t)" -load "main.lsp"
exit
