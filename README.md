

# 0. Setup

* Fix some path texts for your environment (`Resister_ContextMenu.reg`)
* Double click `Resister_ContextMenu.reg`

* Perequisites to execute : MS Windows 10, Solidworks



# 1. pySolidworks

_Handling .SLDPRT with Global Variables_

### 1.1. Condition

*  `A.SLDPRT` and `A.xlsx` should be exist in same directory.
* Base name `A` should be same on `.SLDPRT` and `.xlsx`
* pySolidworks read from 3rd raw in `A.xlsx`

### 1.2. Test in terminal

```bash
cd D:/git/pySolidworks
python pySolidworks.py D:/git/pySolidworks/EX1/EX1.xlsx
python pySolidworks.py D:/git/pySolidworks/H1/H1_SKEL.xlsx
```

### 1.3. How to use

* Make `A.xlsx` and `A.SLDPRT` (`A` is user defined base name)
* Make Global Variables in `A.SLDPRT`
* Make Tables  in `A.xlsx`  with Global Variables
* Choose `pySolidworks` in Context Menu on `A.xlsx` by Windows File Manger
* Wait to Finish

### 1.4. Ref.

* https://github.com/zhanglongtai/Solidworks_Batch_Pocessing_with_Python/blob/master/Main.py
* http://joshuaredstone.blogspot.com/2015/02/solidworks-macros-via-python.html
* https://github.com/thunderbirdtr/SWPyMacros/blob/master/hello_python_world.py
* http://help.solidworks.com/2020/english/api/sldworksapiprogguide/GettingStarted/HelpViewerDS.aspx?version=2020&prod=api&lang=english&path=sldworksapiprogguide%2fGettingStarted%2fUnderstanding_the_SolidWorks_API_Class_Hierarchy.htm&id=997ed363af9149eb8625c112d4bce15d
* pySW : https://github.com/kalyanpi4/pySW



# 2. Export_PdfDxfStp

_Export PDF,DXF from SDLDRW & STP from SLDPRT_

### 2.1. Condiotion

* `.SLDDRW` or `.SLDPRT` files should be exist

### 2.2 Test in terminal

```bash
cd D:/git/pySolidworks
python Export_PdfDxfStp.py D:/git/pySolidworks/EX1
```

### 2.3. How to use

* Choose `Export_PdfDxfStp` in Context Menu on a directory by Windows File Manger
* Wait to Finish



# 3. Build Environment

### 3.1. Install pure Python 3.9

* Do not resister `Path`

* `for everyone`

* Installation directory : `C:\Program Files\Python39`

### 3.2. Virtual Environment to build

* on Windows cmd

```bash
set path=%path%;C:\Program Files\Python39\Scripts\;C:\Program Files\Python39\
pip install virtualenv
python -m venv C:\Users\계정명\AppData\Roaming\Python\Python39\EXE
C:
cd C:\Users\계정명\AppData\Roaming\Python\Python39\EXE\Scripts\
activate.bat
pip install pyinstaller
pip install pandas
pip install xlrd
pip install openpyxl
pip install pywin32
pip install pySW (Debug 필요)
deactivate
C:\Users\계정명\AppData\Roaming\Python\Python39\EXE\Scripts\activate.bat
```

### 3.3. Debug pySW

```bash
code C:\ProgramData\Anaconda3\Lib\site-packages\pySW\commSW.py
code C:\Users\계정명\AppData\Roaming\Python\Python39\EXE\Lib\site-packages\pySW\commSW.py
```

* Replace Every `updatePrt` to `update`
* Replace Every `getGlobalVariables` to `getGlobalVars`
* Replace `SW_PROCESS_NAME = r'C:/Program Files/SOLIDWORKS Corp/SOLIDWORKS/\` to `SW_PROCESS_NAME = r'C:/Program Files/SOLIDWORKS Corp/SOLIDWORKS/SLDWORKS.exe';`
* Remove `SLDWORKS.exe';`

### 3.4. MS Terminal Setting

* Add like that in MS Terminal Setting File :

```bash
        {
            "acrylicOpacity" : 0.7,
            "background" : "#073642",
            "closeOnExit" : true,
            "colorScheme" : "Campbell",
            "commandline" : "%windir%\\System32\\cmd.exe \"/K\" C:\\Users\\계정명\\AppData\\Roaming\\Python\\Python39\\EXE\\Scripts\\activate.bat",
            "cursorColor" : "#FFFFFF",
            "cursorShape" : "bar",
            "fontFace" : "D2Coding",
            "fontSize" : 11,
            "guid" : "{블라블라}",
            "historySize" : 9001,
            "icon" : "C:\\Program Files\\Python39\\Lib\\test\\imghdrdata\\python.png",
            "name" : "EXE Python3.9",
            "padding" : "0, 0, 0, 0",
            "snapOnInput" : true,
            "startingDirectory" : "D:\\git",
            "useAcrylic" : true
        },
```





