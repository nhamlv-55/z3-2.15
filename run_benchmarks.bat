@echo off

set "downloadsFolder=C:\Users\levn\Downloads\test_smt"
set "logFolder=C:\Users\levn"
set "fullPath=C:\Program Files (x86)\Microsoft Research\Z3-2.15\x64_mt\z3.exe"
cd /d "%downloadsFolder%"

for %%i in (*.*) do (
        echo %%i
        call "%fullPath%" /T:10 /st PAR_NUM_THREADS=4 "%downloadsFolder%\%%i" >"%logFolder%\%%i_solving_log" 
)

endlocal