@ echo off

:start
cls
echo Welcome
echo.
echo ----------------------------------------------
echo Math 141(0322): Lec MWF 12:00pm - 12:50pm     
echo                 Dis TTh 12:30pm - 1:50pm      
echo Cmsc 132(0108): Dis MW 3:00pm - 3:50pm        
echo Ccjs 100(0104): Dis W 2:00pm - 2:50pm         
echo Inst 154(0101): Lec Tu 5:00-6:15              
echo Musc 130(0102): ASYNC
echo ----------------------------------------------
echo ____________________________________
echo ^| Mon  ^| Tues ^| Wed  ^| Thur ^| Fri  ^|
echo ------------------------------------
echo ^| Math ^| Math ^| Math ^| Math ^| Math ^|
echo ^|      ^|      ^| Music^|      ^|      ^|
echo ^|      ^|      ^| Ccjs ^|      ^|      ^| 
echo ^| Cmsc ^|      ^| Cmsc ^|      ^| Cmsc ^|
echo ^|      ^| Inst ^|      ^|      ^|      ^|
echo ____________________________________
echo.
echo Today is %date%
echo The time is %time% 
goto date

:date
if %date:~0,3% == Mon (goto monday) else if %date:~0,3% == Tue (goto tuesday) else if %date:~0,3% == Wed (goto wednesday) else if %date:~0,3% == Thu (goto thursday) else if %date:~0,3% == Fri (goto friday) else (echo ERROR
goto end)

:monday
:friday
if %time:~0,5% == 11:58 (echo Math141
start Brave https://east.typewell.com/ikgnineg
start Brave https://umd.zoom.us/j/93649518396
Timeout /t 10795
goto start) else if %time:~0,5% == 14:58 (echo Cmsc132
start Brave https://east.typewell.com/ikgnineg
start Brave https://umd.zoom.us/my/leoliu
goto end) else (Timeout /t 60
goto start)

:tuesday
if %time:~0,5% == 12:28 (echo Math141
start Brave https://east.typewell.com/ikgnineg
start Brave https://umd.zoom.us/j/97008279642
Timeout /t 10800
goto start) else if %time:~0,5% == 16:58 (echo Inst154
start Brave https://east.typewell.com/ikgnineg
start Brave https://umd.zoom.us/j/94060998729?pwd=WXRjOGpKOHMvLysrYTc0V1ZJM1pjQT09
goto end) else (Timeout /t 60
goto start)

:wednesday
if %time:~0,5% == 11:58 (echo Math141
start Brave https://east.typewell.com/ikgnineg
start Brave https://umd.zoom.us/j/93649518396
Timeout /t 60
goto start) else if %time:~0,5% == 12:58 (echo Music130
start Brave https://umd.instructure.com/courses/1300383/external_tools/44833
Timeout /t 60
goto start) else if %time:~0,5% == 13:58 (echo Ccjs100
start Brave https://east.typewell.com/ikgnineg
start Brave https://umd.zoom.us/j/98424208087
Timeout /t 60
goto start) else if %time:~0,5% == 14:58 (echo Cmsc132
start Brave https://east.typewell.com/ikgnineg
start Brave https://umd.zoom.us/my/leoliu
goto end) else (Timeout /t 60
goto start)

:thursday
if %time:~0,5% == 12:28 (echo Math141
start Brave https://east.typewell.com/ikgnineg
start Brave https://umd.zoom.us/j/97008279642
goto end) else (Timeout /t 60
goto start)

:end
Timeout /t 10