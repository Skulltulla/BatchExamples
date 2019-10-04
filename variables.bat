@echo off

set Alpha=Beta
echo Alpha: %Alpha%
rem Beta

set Beta=Alpha
echo Beta: %Beta%
rem Alpha

set Charlie="Charlie"
echo Charlie: %Charlie%
rem "Charlie"

set /p Delta="Type a string (Delta): "
echo %Delta%
rem Append a space for legibility

set /p Epsilon=Type a string (Epsilon): 
echo %Epsilon%
rem The prompt didn't need quotes

PAUSE
