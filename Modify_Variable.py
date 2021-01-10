from pySW import SW
import time

# 솔리드웍스 실행, 접속
print('starting SLDWORKS')
SW.startSW();
time.sleep(10);
SW.connectToSW()

# 파일 읽어들이기
partName = './EX1/'+'NORMAL.SLDPRT'
SW.openPrt(partName);
#SW.openAssy('./EX1/'+'EX1.SLDASM');
#SW.openDrw('./EX1/'+'EX1.SLDDRW');
#time.sleep(10);

# 전역변수 네임 읽어들이기
var = SW.getGlobalVars();
variables = [];
for key in var:
    variables.append(key);

# 전역변수 값 수정
SW.modifyGlobalVar(variables[0],50.0,'mm');
SW.updatePrt();
SW.save('D:\git\PySolidworks','TEST','SLDPRT');

# 파일 닫기
#SW.closeDoc();
SW.shutSW();