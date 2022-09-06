
function yiq=rgb2yiq(image)
%RGB颜色空间
% image=im2double(image);
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
%YIQ颜色空间
Y=0.299*r+0.587*g+0.114*b;
I=0.596*r-0.275*g-0.321*b;
Q=0.212*r-0.523*g+0.311*b;
yiq=cat(3,Y,I,Q);
% figure,
% subplot(221),imshow(I1);title('原图');
% subplot(222),imshow(Y);title('Y');
% subplot(223),imshow(U);title('U');
% subplot(224),imshow(V);title('V');