@ECHO OFF

REM ===============================================================================
REM - Calls VS2010 Compilation Script
REM CMD /V:ON /C CompilerVS2010.bat "..\ArCaApplication.sln" Release
REM IF %ERRORLEVEL% NEQ 0 GOTO ERROR 
REM ===============================================================================


REM ===============================================================================
REM - Calls Ino Setup Compiler
CMD /V:ON /C InnoSetupCompiler.bat ArCaApplication.iss
IF %ERRORLEVEL% NEQ 0 GOTO ERROR 
REM ===============================================================================


REM ===============================================================================
REM - Finish the script in ok status
:END
ECHO ===============================================================================
ECHO Script successfully executed.
ECHO ===============================================================================
ECHO.
PAUSE
EXIT /B 0
REM ===============================================================================


REM ===============================================================================
REM - Finish the script in error status
:ERROR
ECHO ===============================================================================
ECHO.
ECHO The last action returned an error. This script will be killed now.
ECHO ===============================================================================
PAUSE
EXIT /B 1
REM ===============================================================================