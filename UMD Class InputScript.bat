@ echo off

:: variables
:: set ccmath = ccmath140

:start
cls
echo Welcome. 
echo Enter preset cc for transcription.
echo Enter preset zoom for zoom class.
echo Enter preset both for cc and zoom
echo. 
echo Class list...
echo math140, engl101, cmsc131,
echo jour130, univ100.
echo.

set /p preset=Enter preset:
set /p class=Enter class:
echo Verifying...
goto checkPreset

:checkPreset
if %preset% == cc (goto checkClass) else if %preset% == zoom (goto checkClass) else if %preset% == both (goto checkClass) else (goto start)

:checkClass
if %class% == math140 (goto %preset%) else if %class% == engl101 (goto %preset% ) else if %class% == cmsc131 (goto %preset%) else if %class% == jour130 (goto %preset%) else if %class% == univ100 (goto %preset%) else (goto start)

:cc
echo CC:
::pause
if %class% == math140 (start chrome https://east.typewell.com/ikgnineg) else if %class% == engl101 (start chrome https://east.typewell.com/ikgnineg) else if %class% == cmsc131 (start chrome https://east.typewell.com/ikgnineg) else if %class% == jour130 (start chrome https://east.typewell.com/ikgnineg) else if %class% == univ100 (start chrome https://east.typewell.com/ikgnineg) else (echo ERROR)
goto end

:zoom
echo Zoom:
::pause
if %class% == math140 (start chrome https://applications.zoom.us/lti/rich/j/91213408490?oauth_consumer_key=RsAN0rQaSgKrK29FWzVaRw&lti_scid=9489a04e9e9c6102b5f35376b4e1e8dfe2a251a7d8b0726617aaab018676718d) else if %class% == engl101 (start chrome https://umd.zoom.us/j/94107385343?pwd=VGNXc3Y0VkczZmdhVGw1OUtvZy9sZz09) else if %class% == cmsc131 (start chrome ) else if %class% == jour130 (start chrome https://applications.zoom.us/lti/rich/j/93048088463?oauth_consumer_key=RsAN0rQaSgKrK29FWzVaRw&lti_scid=3e327f35aca72293e29ff809175d8d043b8c38e8fb0a9f45dfaca7ca31873478) else if %class% == univ100 (start chrome https://applications.zoom.us/lti/rich/j/92600870403?oauth_consumer_key=RsAN0rQaSgKrK29FWzVaRw&lti_scid=29f0f4ed656b21f82b0a8df709c5f639dc3bfa43ab23216cc283edd544836c3d) else (echo ERROR)
goto end

:both
echo Both:
::pause
::cc
if %class% == math140 (start chrome https://east.typewell.com/ikgnineg) else if %class% == engl101 (start chrome https://east.typewell.com/ikgnineg) else if %class% == cmsc131 (start chrome https://east.typewell.com/ikgnineg) else if %class% == jour130 (start chrome https://east.typewell.com/ikgnineg) else if %class% == univ100 (start chrome https://east.typewell.com/ikgnineg) else (echo ERROR)

::zoom
if %class% == math140 (start chrome https://applications.zoom.us/lti/rich/j/91213408490?oauth_consumer_key=RsAN0rQaSgKrK29FWzVaRw&lti_scid=9489a04e9e9c6102b5f35376b4e1e8dfe2a251a7d8b0726617aaab018676718d) else if %class% == engl101 (start chrome https://umd.zoom.us/j/94107385343?pwd=VGNXc3Y0VkczZmdhVGw1OUtvZy9sZz09) else if %class% == cmsc131 (start chrome ) else if %class% == jour130 (start chrome https://applications.zoom.us/lti/rich/j/93048088463?oauth_consumer_key=RsAN0rQaSgKrK29FWzVaRw&lti_scid=3e327f35aca72293e29ff809175d8d043b8c38e8fb0a9f45dfaca7ca31873478) else if %class% == univ100 (start chrome https://applications.zoom.us/lti/rich/j/92600870403?oauth_consumer_key=RsAN0rQaSgKrK29FWzVaRw&lti_scid=29f0f4ed656b21f82b0a8df709c5f639dc3bfa43ab23216cc283edd544836c3d) else (echo ERROR)
goto end

:end
::ECHO Thank you for using this software.
Timeout /t 5
