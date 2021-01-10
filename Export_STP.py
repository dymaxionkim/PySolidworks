import win32com.client
import time

app = win32com.client.Dispatch("SldWorks.Application")
app.Visible = True
time.sleep(10);
doc = app.OpenDoc(r'D:\git\PySolidworks\EX1\NORMAL.SLDPRT',1)
doc.SaveAs(r'D:\git\PySolidworks\NORMAL.stp')
app.CloseAllDocuments(True)
app.ExitApp()
 