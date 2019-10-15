clc; clear all;
addpath('gps_utils')

gps_RTK_status('C:\Users\ss991\Desktop\HERON\bag\2019-05-17-20-50-00.bag','meter');
gps_raw_scatter('C:\Users\ss991\Desktop\HERON\bag\2019-05-17-20-50-00.bag','meter');
gps_plot_time_series('C:\Users\ss991\Desktop\HERON\bag\2019-05-17-20-50-00.bag','meter');
[means,variances] = gps_calcul_mean_variance('C:\Users\ss991\Desktop\HERON\bag\2019-05-17-20-50-00.bag','degree',4);