

# pySolidworks

_Handling .SLDPRT with Global Variables_



## Purpose

* Read .xlsx File
* Apply Parameters in the .xlsx file to change the .SLDPRT file
* Save new .SLDPRT file(s) into sub-driectories



## Prerequisites

* MS Windows 10
* Solidworks
* Anaconda3 or Python3

```bash
pip install numpy
pip install pandas
pip install pywin32 # COM API 연결
pip install pySW # pywin32 래퍼

# pySW 버그 잡아줄 것 (함수명이 제멋대로 바뀌어 있기 때문)
code C:\ProgramData\Anaconda3\Lib\site-packages\pySW\commSW.py
code C:\Users\dhkima\AppData\Roaming\Python\Python39\EXE\Lib\site-packages\pySW\commSW.py
# Replace
#   updatePrt --> update
#   getGlobalVariables --> getGlobalVars
#   SW_PROCESS_NAME = r'C:/Program Files/SOLIDWORKS Corp/SOLIDWORKS/\  --> SW_PROCESS_NAME = r'C:/Program Files/SOLIDWORKS Corp/SOLIDWORKS/SLDWORKS.exe';
#   SLDWORKS.exe'; --> Remove

```



## Command to test

```bash
cd D:/git/pySolidworks
python pySolidworks.py D:/git/pySolidworks/EX1/EX1.xlsx
python pySolidworks.py D:/git/pySolidworks/H1/H1_SKEL.xlsx
```



## Setup

* Double click `Resister_ContextMenu.reg`



## How to use

* Make `XXX.xlsx` and `XXX.SLDPRT` (`XXX` is user defined)
* Make Global Variables in `XXX.SLDPRT`
* Make Tables  in `XXX.xlsx`  with Global Variables
* Choose `pySolidworks` in Context Menu on `XXX.xlsx` by Windows File Manger
* Wait to Finish



## Ref.

* https://github.com/zhanglongtai/Solidworks_Batch_Pocessing_with_Python/blob/master/Main.py
* http://joshuaredstone.blogspot.com/2015/02/solidworks-macros-via-python.html
* https://github.com/thunderbirdtr/SWPyMacros/blob/master/hello_python_world.py
* http://help.solidworks.com/2020/english/api/sldworksapiprogguide/GettingStarted/HelpViewerDS.aspx?version=2020&prod=api&lang=english&path=sldworksapiprogguide%2fGettingStarted%2fUnderstanding_the_SolidWorks_API_Class_Hierarchy.htm&id=997ed363af9149eb8625c112d4bce15d
* pySW : https://github.com/kalyanpi4/pySW

