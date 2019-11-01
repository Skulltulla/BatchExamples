@echo off

echo You don't need to press 'Enter'.

echo.
choice
rem [Y, N]?

IF ERRORLEVEL 2 (
  echo You pressed "N" or "n"
) ELSE (
  echo You Press "Y" or "y"
)

rem ----------------------------------------------------------------------

echo.
choice /m "Are you sure"
rem Are you sure [Y, N]?

rem ----------------------------------------------------------------------

rem There is no "ELSE IF"

echo.
choice /c ABCD /m "Which:"
rem Which [A,B,C,D]?

echo ErrorLevel = %ERRORLEVEL%
IF ERRORLEVEL 4 (
	echo You selected 'D'
	goto ENDIF
)
IF ERRORLEVEL 3 (
	echo You selected 'C'
	goto ENDIF
)
IF ERRORLEVEL 2 (
	echo You Selected 'B'
	goto ENDIF
)
IF ERRORLEVEL 1 (
	echo You Selected 'A'
	goto ENDIF
)
:ENDIF

rem ----------------------------------------------------------------------

:EXIT
PAUSE