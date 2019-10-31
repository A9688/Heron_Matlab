clear;
clc;

path_bag = 'C:\Users\ss991\Desktop\HERON\bag\2019-10-15-16-05-29.bag';

bag = rosbag(path_bag);
bag.AvailableTopics;
% get gps topic data
NFIX = select(bag,'Topic','/novatel/fix');
% convert to matlab struct
msgStructs = readMessages(NFIX,'DataFormat','struct');
% get longitude and latitude, double
Lo = cellfun(@(m) double(m.Longitude),msgStructs);  % longitude (n,1)
La = cellfun(@(m) double(m.Latitude),msgStructs); % latitude (n,1)

plot_google_map('apiKey', 'GAPI key here') % You only need to run this once, which will store the API key in a mat file for all future usages
lat = La';
lon = Lo';
plot(lon, lat, '--.r', 'MarkerSize', 20)
axis([-75.1988 -75.19866 39.94166 39.94174]);  % zooming

plot_google_map('MapScale', 1, 'MapType', 'satellite', 'FigureResizeUpdate', 1)