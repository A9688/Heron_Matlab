clc; clear all;
addpath('gps_utils')

% gps_RTK_status('C:\Users\ss991\Desktop\HERON\bag\2019-10-15-16-05-29.bag','meter');
gps_raw_scatter_time('C:\Users\ss991\Desktop\HERON\bag\2019-10-15-16-05-29.bag','degree');
gps_plot_time_series('C:\Users\ss991\Desktop\HERON\bag\2019-10-15-16-05-29.bag','degree');
% [means,variances] = gps_calcul_mean_variance('C:\Users\ss991\Desktop\HERON\bag\2019-10-15-16-05-29.bag','degree',4);