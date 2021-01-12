import os
import sys
import pandas as pd
from pySW import SW
import time

# Read Excel File
INPUT = sys.argv[1]
DF1 = pd.read_excel(INPUT,skiprows=2)

# SEED SLDPRT File Name
SEED = os.path.splitext(INPUT)[0]
SEED_BASENAME = os.path.basename(SEED)

for i in range(len(DF1.index)):
    # Start SLDWORKS
    print('starting SLDWORKS')
    SW.startSW();
    time.sleep(10);
    SW.connectToSW()
    # Read SLDPRT
    SW.openPrt(SEED+".SLDPRT");
    # Get Global Variables
    GVAR = SW.getGlobalVars();
    GVAR_NAME = [];
    for key in GVAR:
        GVAR_NAME.append(key);
    # Modify Global Variables
    for j in range(len(DF1.columns)):
        for k in range(len(GVAR_NAME)):
            if DF1.columns[j] == GVAR_NAME[k]:
                SW.modifyGlobalVar(GVAR_NAME[k],DF1.iloc[i,j],'mm');
    SW.update();
    # Save Modified SLDPRT
    if not os.path.exists(DF1.OUTPUT_DIRECTORY[i]):
        os.makedirs(DF1.OUTPUT_DIRECTORY[i])
    SW.save(DF1.OUTPUT_DIRECTORY[i] ,SEED_BASENAME,'SLDPRT');
    # Shutdown SLDWORKS
    SW.shutSW();
    time.sleep(1);

print("END!")