%clc;
%clear all;

%% Read txt file and orgainze into a single vector

numsArr = [];
arrG = [];
vecG = [];
arrA = [];
vecA = [];
arrE = [];
vecE = [];

fileID = fopen('rotFloor10s.txt');
lineNow = fgetl(fileID);
while ischar(lineNow)
    %disp(lineNow)
    if isempty(lineNow)
        lineNow = fgetl(fileID);
    else 
        if strcmp(lineNow(1), "E")
            nums1 = str2num(lineNow(3:9));
            nums2 = str2num(lineNow(11:17));
            nums3 = str2num(lineNow(19:25));
            vecE = [numsArr(end-1:end); nums1; nums2; nums3];
            arrE = [arrE vecE]; 
            lineNow = fgetl(fileID);
        elseif strcmp(lineNow(1), "A")
            nums1 = str2num(lineNow(3:9));
            nums2 = str2num(lineNow(11:17));
            nums3 = str2num(lineNow(19:25));
            vecA = [numsArr(end-1:end); nums1; nums2; nums3];
            arrA = [arrA vecA];
            lineNow = fgetl(fileID);
        elseif strcmp(lineNow(1), "G")
            nums1 = str2num(lineNow(3:9));
            nums2 = str2num(lineNow(11:17));
            nums3 = str2num(lineNow(19:25));
            vecG = [numsArr(end-1:end); nums1; nums2; nums3];
            arrG = [arrG vecG];
            lineNow = fgetl(fileID);
        else
            numLine = str2num(lineNow);
            numsArr = [numsArr; numLine];
            lineNow = fgetl(fileID);
        end
    end
end
fclose(fileID);

%% Organize and plot 

figure(1)
grid on
hold on
plot(arrG(1,:),arrG(3,:))
plot(arrG(1,:),arrG(4,:))
plot(arrG(1,:),arrG(5,:))
title("Gyroscope")
xlabel("time [s]")
ylabel("data")
legend("Gx", "Gy", "Gz")

figure(2)
grid on
hold on
plot(arrE(1,:),arrE(3,:))
plot(arrE(1,:),arrE(4,:))
plot(arrE(1,:),arrE(5,:))
title("Euler/Game Vec")
xlabel("time [s]")
ylabel("data")
legend("roll", "pitch", "yaw")

figure(3)
grid on
hold on
plot(arrA(1,:),arrA(3,:))
plot(arrA(1,:),arrA(4,:))
plot(arrA(1,:),arrA(5,:))
title("Rotational Acceleration")
xlabel("time [s]")
ylabel("data")
legend("x", "y", "z")
