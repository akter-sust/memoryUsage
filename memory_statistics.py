import pandas as pd
import numpy as np

import sys
filename = sys.argv[1]

with open(filename, "r") as f:
    dt = f.readlines()

date_l = []
mem_l = []
for l in dt:
    if l.startswith("Mem:"):
        mem_l.append(l.split()[1:])
    else:
        date_l.append([l])


df = pd.DataFrame(np.column_stack([date_l, mem_l]), columns=["time", "total", "used", "free", "shared", "buff/cache", "available"])

for c in df.columns[1:]:
    if c in ["total", "free"]:
        continue
    print(df[c].apply(lambda x: int(x)/1024).describe())
