clc;clear;close all;
tic
[name, path] = uigetfile({'*.jpg','JEPG File';'*.bmp','bit File';'*.png','png File';'*.tif','ALL Image Files'},'open image file');
I=imread([path name]);
I=imresize(I,[337 449]);
%figure,imshow(I);title('ԭͼ');
colorshow(I);
%gray=rgb2gray(I);
%figure,imshow(gray);
colorhist(I);
colorgraythresh(I);
%figure,
%subplot(131),imshow(I);title('ԭͼ');

%level=graythresh(gray);
%%level=OSTU(gray);
%bw=im2bw(gray,level);  
%subplot(132),imshow(bw);title('��ֵͼ');
%bw1=edge(bw,'canny');
%subplot(133);imshow(bw1);title('��Ե���');