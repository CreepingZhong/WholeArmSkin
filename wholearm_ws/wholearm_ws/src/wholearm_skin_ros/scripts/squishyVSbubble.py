#!/usr/bin/env python3

import pickle
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns
import mpl_toolkits.axisartist as axisartist

fig = plt.figure(figsize=(5, 3.5))
plt.rc('font', family='serif', size='10')

itime = [0.0000,0.0167,0.0333,0.0500,0.0667,0.0833,0.1000,0.1167,0.1333,0.1500,0.1667,0.1833,0.2000,0.2167,0.2333,0.2500,0.2667,0.2833,0.3000,0.3167,0.3333,0.3500,0.3667,0.3833,0.4000,0.4167,0.4333,0.4500,0.4667,0.4833,0.5000,0.5167,0.5333,0.5500,0.5667,0.5833,0.6000,0.6167,0.6333,0.6500,0.6667,0.6833,0.7000,0.7167,0.7333,0.7500,0.7667,0.7833,0.8000,0.8167,0.8333,0.8500,0.8667,0.8833,0.9000,0.9167,0.9333,0.9500,0.9667,0.9833,1.0000,1.0167,1.0333,1.0500,1.0667,1.0833,1.1000,1.1167,1.1333,1.1500,1.1667,1.1833,1.2000,1.2166,1.2333,1.2500,1.2667,1.2833,1.3000,1.3167,1.3333,1.3500,1.3667,1.3833,1.4000,1.4167,1.4333,1.4500,1.4667,1.4833,1.5100,1.5267,1.5433,1.5600,1.5767,1.5933,1.6100,1.6267,1.6433,1.6600,1.6767,1.6933,1.7100,1.7267,1.7433,1.7600,1.7767,1.7933,1.8100,1.8267,1.8433,1.8600,1.8767,1.8933,1.9100,1.9267,1.9433,1.9600,1.9767,1.9933,2.0100,2.0267,2.0433,2.0600,2.0767,2.0933,2.1100,2.1267,2.1433,2.1600,2.1767,2.1933,2.2100,2.2267,2.2433,2.2600,2.2767,2.2933,2.3100,2.3267,2.3433,2.3600,2.3767,2.3933,2.4100,2.4267,2.4433,2.4600,2.4767,2.4933,2.5100,2.5267,2.5433,2.5600,2.5767,2.5933,2.6100,2.6267,2.6433,2.6600,2.6767,2.6933,2.7100,2.7267,2.7434,2.7600,2.7767,2.7934,2.8100,2.8267,2.8433,2.8600,2.8767,2.8933,2.9100,2.9267,2.9433,2.9600,2.9767,2.9933,3.0100,3.0267,3.0400,3.0567,3.0733,3.0900,3.1067,3.1233,3.1400,3.1567,3.1733,3.1900,3.2067,3.2233,3.2400,3.2567,3.2733,3.2900,3.3067,3.3233,3.3400,3.3567,3.3733,3.3900,3.4067,3.4233,3.4400,3.4567,3.4733,3.4900,3.5067,3.5233,3.5400,3.5567,3.5733,3.5900,3.6067,3.6233,3.6400,3.6566,3.6733,3.6900,3.7067,3.7233,3.7400,3.7567,3.7733,3.7900,3.8067,3.8233,3.8400,3.8567,3.8734,3.8900,3.9067,3.9233,3.9400,3.9567,3.9733,3.9900]
iskin = [31.87,32.22,32.56,32.80,34.52,43.88,62.63,84.55,110.18,144.00,187.32,244.16,317.41,404.35,500.27,598.67,689.54,760.25,805.54,835.18,861.34,883.06,890.89,881.36,857.18,821.30,776.16,725.25,671.79,616.49,559.87,503.50,447.43,392.17,341.47,296.99,256.86,220.73,189.29,161.94,137.89,116.65,97.94,81.50,66.69,53.06,41.03,31.26,23.94,18.68,14.81,11.95,10.06,8.87,7.86,6.95,6.19,5.59,5.24,5.16,5.52,6.59,8.30,10.13,11.72,13.25,14.71,16.20,17.79,19.24,20.39,21.41,22.63,23.88,24.63,24.89,25.04,25.30,25.59,25.56,25.18,25.02,25.33,25.74,25.92,26.01,26.32,26.84,27.34,27.52,28.95,29.72,30.36,30.82,31.15,31.40,31.74,32.34,33.25,34.08,35.67,42.66,61.88,92.60,128.15,167.14,211.37,263.97,327.76,402.13,482.89,562.26,635.32,704.79,765.96,811.07,848.39,880.65,898.28,898.58,883.89,857.09,821.37,778.72,731.07,680.67,629.08,577.61,527.36,478.79,432.52,389.50,350.01,313.95,281.49,252.72,220.73,189.29,161.94,137.89,116.65,97.94,81.50,66.69,53.06,39.87,36.51,34.25,32.74,31.54,30.57,29.90,29.40,28.83,28.28,27.93,27.81,27.85,27.75,27.45,27.20,26.98,26.72,26.78,27.18,27.54,27.70,27.59,27.47,27.56,27.59,27.78,28.46,29.27,29.91,30.29,30.75,31.61,32.51,33.30,34.02,34.83,34.83,47.68,72.79,104.83,146.57,201.83,269.09,345.98,429.02,513.94,595.74,672.27,743.51,803.26,844.79,871.63,888.39,892.25,882.40,861.54,830.57,790.67,743.80,691.42,635.15,577.52,520.69,465.83,415.06,370.01,329.52,292.17,257.67,225.08,193.92,165.97,142.70,123.89,108.90,96.99,87.76,81.08,76.72,74.35,73.67,74.37,76.14,78.67,81.51,84.24,86.89,89.51,92.03,94.43,96.39,97.67,98.61,99.43]
time = [0.0167,0.0333,0.0500,0.0667,0.0833,0.0000,0.1000,0.1167,0.1333,0.1500,0.1667,0.1833,0.2000,0.2167,0.2333,0.2500,0.2667,0.2833,0.3000,0.3167,0.3333,0.3500,0.3667,0.3833,0.4000,0.4167,0.4333,0.4500,0.4667,0.4833,0.5000,0.5167,0.5333,0.5500,0.5667,0.5833,0.6000,0.6167,0.6333,0.6500,0.6667,0.6833,0.7000,0.7167,0.7333,0.7500,0.7667,0.7833,0.8000,0.8167,0.8340,0.8541,0.8742,0.8943,0.9144,0.9344,0.9545,0.9746,0.9947,1.0148,1.0349,1.0549,1.0750,1.0951,1.1152,1.1353,1.1553,1.1754,1.1955,1.2156,1.2357,1.2558,1.2758,1.2959,1.3160,1.3361,1.3562,1.3763,1.3964,1.4164,1.4365,1.4566,1.4767,1.4968,1.5169,1.5369,1.5570,1.5771,1.5972,1.6173,1.6374,1.6574,1.6775,1.6976,1.7177,1.7333,1.7579,1.7779,1.7980,1.8181,1.8382,1.8583,1.8783,1.8984,1.9185,1.9386,1.9587,1.9788,1.9988,2.0189,2.0390,2.0591,2.0792,2.0993,2.1194,2.1394,2.1595,2.1796,2.1997,2.2198,2.2398,2.2599,2.2800,2.3001,2.3202,2.3403,2.3603,2.3804,2.4005,2.4206,2.4407,2.4500,2.4667,2.4833,2.5000,2.5167,2.5333,2.5500,2.5667,2.5833,2.6000,2.6167,2.6333,2.6500,2.6667,2.6833,2.7000,2.7167,2.7333,2.7500,2.7667,2.7833,2.8000,2.8167,2.8333,2.8500,2.8667,2.8833,2.9000,2.9167,2.9333,2.9500,2.9667,2.9833,3.0000,3.0167,3.0333,3.0500,3.0667,3.0833,3.1000,3.1167,3.1333,3.1500,3.1667,3.1833,3.2000,3.2167,3.2333,3.2500,3.2667,3.2833,3.3000,3.3167,3.3333,3.3500,3.3667,3.3833,3.4000,3.4167,3.4333,3.4500,3.4667,3.4833,3.5000,3.5167,3.5333,3.5500,3.5667,3.5833,3.6000,3.6167,3.6333,3.6500,3.6667,3.6833,3.7000,3.7167,3.7333,3.7500,3.7667,3.7833,3.8000,3.8167,3.8333,3.8500,3.8667,3.8833,3.9000,3.9167,3.9333,3.9500,3.9667,3.9833]
skin = [1.25,3.35,7.19,14.17,25.37,0.00,41.89,66.54,104.89,160.81,228.77,300.83,374.77,448.73,520.17,588.83,654.59,715.42,768.69,811.30,840.74,855.96,856.42,845.31,826.09,798.03,761.76,720.47,677.04,632.55,586.88,540.45,494.88,451.54,410.46,369.92,328.09,284.90,242.00,202.11,166.90,137.30,114.16,97.14,85.32,77.76,73.90,73.28,74.86,77.69,81.42,85.87,91.25,97.66,104.44,110.77,116.66,122.11,126.88,131.17,134.53,136.32,137.27,137.93,138.16,138.02,137.46,136.29,134.67,133.08,131.87,130.92,129.94,129.05,128.55,128.30,128.05,127.61,127.22,127.20,127.22,127.22,127.40,127.39,127.03,126.56,126.10,125.64,125.41,125.84,128.55,133.12,139.34,153.96,181.41,219.08,264.05,314.75,370.69,430.97,492.98,554.41,613.73,668.16,714.45,750.25,773.31,782.92,781.21,770.27,750.63,723.45,690.88,654.67,616.25,576.45,535.97,496.31,458.61,423.19,391.19,363.47,338.89,316.58,296.29,277.50,260.70,246.40,234.27,224.15,216.17,218.29,219.18,220.24,221.65,223.09,224.20,224.95,225.62,226.46,227.21,227.53,227.65,227.92,228.16,228.05,227.54,226.77,226.00,225.41,225.01,224.79,224.78,224.78,224.97,225.61,226.42,226.94,227.26,227.53,227.39,226.89,226.47,225.76,224.10,223.29,226.66,236.69,257.33,290.46,328.80,365.56,403.68,444.20,482.41,517.67,553.87,592.49,627.10,649.90,663.08,670.73,670.78,661.68,645.13,622.80,595.84,565.67,533.58,500.60,468.20,437.00,406.34,376.96,350.03,324.57,299.48,276.00,255.47,237.93,223.55,212.38,203.90,197.27,191.76,187.58,184.98,183.46,182.50,182.14,182.61,183.70,184.98,186.37,188.02,189.89,191.79,193.86,196.11,197.99,199.21,200.17,201.31,202.54]


fig = plt.figure(1)
ax = fig.add_subplot(111)
plt.plot(itime, iskin, color='#1b9e77')
plt.plot(time, skin, color='#d95f02')
plt.xlabel('$Distance^{-1}(mm^{-1})$')
plt.ylabel(u'Δ Capacitance (pF)')
sns.despine()
plt.legend(['Math Model', 'Measured Capacitance'], loc = 'upper right', bbox_to_anchor=(1.1, 1), frameon=False)


plt.xlim([0, 4])
plt.ylim([0, 1000])
plt.tight_layout(pad=0)
ax.plot((1), (0), ls="", marker="4", ms=10, color="k",
    transform=ax.get_yaxis_transform(), clip_on=False)
ax.plot((0), (1), ls="", marker="2", ms=10, color="k",
    transform=ax.get_xaxis_transform(), clip_on=False)
# ax.plot(0.062, 2.04, marker="2", ms=10, color="k", clip_on=False)

plt.savefig("bubbleVSsquishy.pdf", dpi=600)
plt.show()
