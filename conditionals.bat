@echo off

rem --------------------------------------------------
rem Filename/Directory 

set FilenameOrDirectory=conditionals.bat
IF EXIST %FilenameOrDirectory% (
	echo EXIST: %FilenameOrDirectory%
) 
echo.

set InvalidFilenameOrDirectory=SomeNonExistentFilenameOrDirectory
IF NOT EXIST %InvalidFilenameOrDirectory% (
	echo NOT EXIST: %InvalidFilenameOrDirectory%
)
echo.

rem --------------------------------------------------
rem Variables 

set Alpha=TestFile.txt
IF DEFINED Alpha (
	echo Variable 'Alpha' defined: %Alpha%
) 
echo.

IF NOT DEFINED Beta (
	echo Variable 'Beta' undefined.
)
echo.

rem --------------------------------------------------
rem Strings

IF HELLO==WORLD (
	echo.
)

IF "HELLO"=="WORLD" (
	echo.
)

IF NOT HELLO==WORLD (
	echo HELLO != WORLD
	echo.
)

IF [] == [] (
	echo Empty string is empty!
)

set EmptyString=
if [%EmptyString%]==[] (
	echo EmptyString variable is empty!
)

set /p StringInput="Press Enter: "
if [%StringInput%] == [] (
	echo You typed nothing. Good day, sir!
)

rem --------------------------------------------------
rem Error Level

echo Error Level: %errorlevel%
IF %errorlevel% == 0 (
	goto Label%errorlevel%
) ELSE (
	goto EXIT
)

:Label0
echo Label0 

:EXIT
PAUSE
