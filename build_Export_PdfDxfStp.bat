rem 빌드용 파이썬 가상환경 활성화
set path=%path%;C:\Program Files\Python39\Scripts\;C:\Program Files\Python39\
call C:\Users\osboxes\AppData\Roaming\Python\Python39\EXE\Scripts\activate.bat

del .\Export_PdfDxfStp.exe
pyinstaller --onefile --icon=pySolidworks.ico Export_PdfDxfStp.spec "Export_PdfDxfStp.py"
move dist\Export_PdfDxfStp.exe .\Export_PdfDxfStp.exe
rmdir /S /Q build
rmdir /S /Q dist
rmdir /S /Q __pycache__
