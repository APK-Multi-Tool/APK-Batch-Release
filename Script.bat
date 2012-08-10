cd ..\APK-Multi-Tool
"C:\Program Files\7-Zip\7z.exe" a -r -tzip -y -mx9 -mmt ..\releases\APK-Multi-Tool.zip -xr!?git\
"C:\Program Files\7-Zip\7z.exe" a -r -t7z -y -mx9 -mmt ..\releases\APK-Multi-Tool.7z -xr!?git\
cd "%~dp0"
cd ..\APK-Multi-Tool2
"C:\Program Files\7-Zip\7z.exe" a -r -tzip -y -mx9 -mmt ..\releases\APK-Multi-Tool2.zip -xr!?git\
"C:\Program Files\7-Zip\7z.exe" a -r -t7z -y -mx9 -mmt ..\releases\APK-Multi-Tool2.7z -xr!?git\
cd "%~dp0"
cd ..\APK-Multi-Tool-Linux
"C:\Program Files\7-Zip\7z.exe" a -r -tzip -y -mx9 -mmt ..\releases\APK-Multi-Tool-Linux.zip -xr!?git\
"C:\Program Files\7-Zip\7z.exe" a -r -t7z -y -mx9 -mmt ..\releases\APK-Multi-Tool-Linux.7z -xr!?git\
