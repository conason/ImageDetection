clc;clear;close all;
[name, path] = uigetfile({'*.jpg','JEPG File';'*.bmp','bit File';'*.png','png File';'*.tif','ALL Image Files'},'open image file');
im=imread([path name]);
%转yiq色域空间
YIQ=rgb2ntsc(im);
i=YIQ(:,:,2);%YIQ I分量
i=imbinarize(i,graythresh(i));%自动阈值分割
%ycbcr色域空间
YCbCr=rgb2ycbcr(im);
Cr=YCbCr(:,:,3);%Cr分量


Cr1=imbinarize(Cr,0.482);%经过大量统计选着0.482为阈值分水岭
Cr2=imbinarize(Cr,graythresh(Cr));
Cr=Cr1&Cr2;

Cr1=imadd(i,Cr);%将I分量的二值图与Cr分量二值图相加
% Cr=Cr&i;
se=strel("diamond",38);
Cr2=imerode(Cr1,se);%腐蚀

Cr2=imreconstruct(Cr2,Cr1);%区域生长去除大面积的黄土地
Cr=xor(Cr1,Cr2);

Cr=bwareaopen(Cr,200);%去除面积小于200的小面基噪点
Cr = logical(Cr);
Area_I = regionprops(Cr,'centroid');%标记质点
figure;
imshow(im)
[Lbw,numbw]=bwlabel(Cr);
s=regionprops(Lbw,'BoundingBox');
r=struct2cell(s);
hold on;

for x = 1: numel(Area_I)
    plot(Area_I(x).Centroid(1),Area_I(x).Centroid(2),'b*'); %质心标记
    srt=text(Area_I(x).Centroid(1),Area_I(x).Centroid(2)+15, strcat('X: ', num2str(round(Area_I(x).Centroid(1))), 'Y: ', num2str(round(Area_I(x).Centroid(2)))));
    set(srt, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 8, 'Color', 'w');
end

for i=1:length(r)
    rectangle('position',r{i},'edgecolor','r','LineWidth',1.8) %矩形框选
    hold on
end

hold off;

cc = bwconncomp(Cr);%统计联通区域
s=num2str(cc.NumObjects);
legend(s,'Location','SouthEast');%将统计的数目显示在图例上
 
saveas(gcf, 'result.jpg');


% Cr=imbinarize(Cr,graythresh(Cr));
% bwcr=repmat(Cr,[1 1 3]);
% Image=immultiply(im,bwcr);
% figure;
% imshow(Image);title('去噪前');
% Cr=bwareaopen(Cr,10);
% bwcr=repmat(Cr,[1 1 3]);
% Image=immultiply(im,bwcr);
% figure;
% imshow(Image);title('去除面积小于10的噪点');
% Cr=bwareaopen(Cr,50);
% bwcr=repmat(Cr,[1 1 3]);
% Image=immultiply(im,bwcr);
% figure;
% imshow(Image);title('去除面积小于50的噪点');
% Cr=bwareaopen(Cr,100);
% bwcr=repmat(Cr,[1 1 3]);
% Image=immultiply(im,bwcr);
% figure;
% imshow(Image);title('去除面积小于100的噪点');
% Cr=bwareaopen(Cr,200);
% bwcr=repmat(Cr,[1 1 3]);
% Image=immultiply(im,bwcr);
% figure;
% imshow(Image);title('去除面积小于200的噪点');
% Cr=bwareaopen(Cr,300);
% bwcr=repmat(Cr,[1 1 3]);
% Image=immultiply(im,bwcr);
% figure;
% imshow(Image);title('去除面积小于300的噪点');
% figure;
% imshow(Image1);title('YIQ I分量自动阈值二值图');
% figure;
% imshow(YCbCr);
% figure;
% imshow(Y);
% figure;
% imshow(Cb);
% figure;
% imshow(Cr);title('YCBCR CR分量自动阈值二值图');
