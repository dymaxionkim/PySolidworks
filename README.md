

# Solidworks with Python

_Handling .SLDPRT with Global Variables_



## Implementation objectives

* Read Excel File
* Read the SLDPRT file written to the EXCEL file
* Apply Parameters in the EXCEL file to change the SLDPRT file
* Save the SLDPRT file with the name in the EXCEL file



## Prerequisites

* MS Windows 10
* Solidworks
* Anaconda3

```bash
pip install Numpy
pip install pandas
pip install pywin32 # COM API 연결
pip install pySW # pywin32 래퍼

# pySW 버그 잡아줄 것 (함수명이 제멋대로 바뀌어 있기 때문)
code C:\ProgramData\Anaconda3\Lib\site-packages\pySW\commSW.py
```



### Command

```bash
cd D:/git/pySolidworks
python pySolidworks.py D:/git/pySolidworks/EX1/EX1.xlsx
python pySolidworks.py D:/git/pySolidworks/H1/H1_SKEL.xlsx
```

Q



## Ref.

* https://github.com/zhanglongtai/Solidworks_Batch_Pocessing_with_Python/blob/master/Main.py
* http://joshuaredstone.blogspot.com/2015/02/solidworks-macros-via-python.html
* https://github.com/thunderbirdtr/SWPyMacros/blob/master/hello_python_world.py
* http://help.solidworks.com/2020/english/api/sldworksapiprogguide/GettingStarted/HelpViewerDS.aspx?version=2020&prod=api&lang=english&path=sldworksapiprogguide%2fGettingStarted%2fUnderstanding_the_SolidWorks_API_Class_Hierarchy.htm&id=997ed363af9149eb8625c112d4bce15d
* pySW : https://github.com/kalyanpi4/pySW

