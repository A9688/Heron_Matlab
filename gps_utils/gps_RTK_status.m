function gps_RTK_status(path, disp_type)
% GPS_RAW_SCATTER Function for plotting raw data from GPS.
% INPUT:
% path: str, path for the bag package
% disp_type: str, displaying type. "degree" or "meter"

% get data
bag_circled = rosbag(path);
bag_circled.AvailableTopics;
% get gps topic data
NFIX = select(bag_circled,'Topic','/novatel/fix');
% convert to matlab struct
msgStructs = readMessages(NFIX,'DataFormat','struct');
% get longitude and latitude, double
RTK = cellfun(@(m) double(m.Status.Status),msgStructs);  % RTK-GPS Status

% create a new figure and plot according to 'disp_type'
figure;
plot(RTK);
ylim([-2,2]);

end

