#!/usr/bin/env python3

import pickle
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns

fig = plt.figure(figsize=(5, 3.5))
plt.rc('font', family='serif', size='10')

ddata = pickle.load(open('data_collection_mathstretch.pickle', "rb"))
skin = np.array(ddata['skin'])
time = np.array(ddata['skin_time']) - ddata['skin_time'][0]
d = time[93:110]
d = 0.58 * d + 0.099
d = 100 * d
d = d -d[0]
skin = skin[93:110]/1000
skin = skin - skin[0]
m , b = np.polyfit(d, skin, 1)

fig = plt.figure(1)
ax = fig.add_subplot(111)
plt.plot(d, m*d + b, color='#d95f02')
plt.plot(d, skin, color='#1b9e77')
plt.xlabel('Strech Percentage (%)')
plt.ylabel(u'Δ Capacitance (pF)')
plt.tight_layout(pad=0)
sns.despine()
plt.legend(['Math Model', 'Measured Capacitance'], loc = 'upper left', bbox_to_anchor=(0, 1), frameon=False)

plt.xlim([0, 16.5])
plt.ylim([0, 3.1])
plt.tight_layout(pad=0)
ax.plot((1), (0), ls="", marker="4", ms=10, color="k",
    transform=ax.get_yaxis_transform(), clip_on=False)
ax.plot((0), (1), ls="", marker="2", ms=10, color="k",
    transform=ax.get_xaxis_transform(), clip_on=False)
# ax.axis["top"].set_visible(False)
# ax.axis["right"].set_visible(False)
# plt.rcParams['xtick.direction'] = 'inout'
plt.savefig("mathstretch.pdf", dpi=600)
plt.show()
