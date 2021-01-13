rem 빌드를 위한 파이썬 환경구축방법

rem   1. 순정 파이썬3.9를 받아서 설치
rem      1.1. 기존에 아나콘다3를 사용중일 경우에는 시스템변수에 등록하지 않는 편이 나음
rem      1.2. 모든사용자용으로 설치 (C:\Program File 디렉토리에 설치되도록)
rem   2. 윈도우 커맨드창(cmd)을 열고 다음 명령 실행
rem       set path=C:\Program Files\Python39\Scripts\;C:\Program Files\Python39\
rem       pip install virtualenv
rem       python -m venv C:\Users\계정명\AppData\Roaming\Python\Python39\EXE
rem       C:
rem       cd C:\Users\dhkima\AppData\Roaming\Python\Python39\EXE\Scripts\
rem       activate.bat
rem       pip install pyinstaller
rem       pip install pandas
rem       pip install xlrd
rem       pip install openpyxl
rem       pip install pywin32
rem       pip install pySW (Debug 필요)
rem       deactivate

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
