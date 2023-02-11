@echo on

set inputFolder="Input"
set outputFolder="Output"


for %%f in (%inputFolder%\*.mp4) do (
  
  "%~dp0ffmpeg.exe" -i "%%f" -map 0:v -map 0:a:5 -c:v copy -c:a copy "%outputFolder%\%%~nf_clean.mp4"
  echo Video file with only audio track 6: %outputFolder%\%%~nf_clean.mp4
)

pause





