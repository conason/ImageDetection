
function yuv=rgb2yuv(image)
%RGB颜色空间
% image=im2double(image);
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
%YUV颜色空间
Y=0.299*r+0.587*g+0.114*b;
U=-0.14713*r-0.28886*g+0.436*b;
V=0.615*r-0.51499*g-0.10001*b;
yuv=cat(3,Y,U,V);
% figure,
% subplot(221),imshow(I1);title('原图');
% subplot(222),imshow(Y);title('Y');
% subplot(223),imshow(U);title('U');
% subplot(224),imshow(V);title('V');