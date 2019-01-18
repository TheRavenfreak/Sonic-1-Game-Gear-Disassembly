@ECHO OFF

IF EXIST S1built.sym DEL S1built.sym
IF EXIST Sonic1.o DEL Sonic1.o
IF EXIST S1built.gg DEL S1built.gg

ECHO Assembling...
WLA\wla-z80.exe -vo Sonic1.asm Sonic1.o

IF %ERRORLEVEL% NEQ 0 GOTO Build_Failed
IF NOT EXIST Sonic1.o GOTO Build_Failed

ECHO Linking...
WLA\wlalink.exe -rs Link.txt S1built.gg
IF %ERRORLEVEL% NEQ 0 GOTO Link_Failed

ECHO Assembly complete.

REM Use fcomp to compare with original ROM
REM ECHO Comparing with original:
fcomp S1built.gg "Sonic1.gg" > compare.txt


GOTO end

:Build_Failed
ECHO Assembly failed.

:Link_Failed
ECHO Error while linking.

:end
PAUSE