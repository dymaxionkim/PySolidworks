rem 빌드용 파이썬 가상환경 활성화
set path=%path%;C:\Program Files\Python39\Scripts\;C:\Program Files\Python39\
call C:\Users\dhkima\AppData\Roaming\Python\Python39\EXE\Scripts\activate.bat

del .\pySolidworks.exe
rem pyinstaller --noconsole --onefile --icon=pySolidworks.ico pySolidworks.spec "pySolidworks.py"
pyinstaller --onefile --icon=pySolidworks.ico pySolidworks.spec "pySolidworks.py"
move dist\pySolidworks.exe .\pySolidworks.exe
rmdir /S /Q build
rmdir /S /Q dist
rmdir /S /Q __pycache__
