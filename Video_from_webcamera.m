clc
clear 
close all

url = 'http://192.168.137.40:8080/video';
cam = ipcam(url);
output_folder = "G:\Camera quality\WI-FI v2 800x600\";

tic
for n = 1:1000
    tic     
    img = snapshot(cam);
    gray_img = rgb2gray(img);  
    %gray_img = gray_img(:,500:3840);
    imshow(gray_img);
    fullFileName = fullfile(output_folder, int2str(n) + ".bmp");
    imwrite(gray_img, fullFileName);
    %pause(0.1);
    disp(int2str(n) + ".bmp");
    toc
end
close all
disp("Finished");
toc
