function allhist(im)

figure,
%%

%%RGB空间
r=im(:,:,1);%红色分量
g=im(:,:,2);%绿色分量
b=im(:,:,3);%蓝色分量
subplot(4,3,1),imhist(r);title('r分量');
subplot(4,3,2),imhist(g);title('g分量');
subplot(4,3,3),imhist(b);title('b分量');
%%

% YCBCR颜色空间
ycbcr=rgb2ycbcr(im);
y=ycbcr(:,:,1);%亮度
cb=ycbcr(:,:,2);%蓝色分量
cr=ycbcr(:,:,3);%红色分量
subplot(4,3,4),imhist(y);title('y分量');
subplot(4,3,5),imhist(cb);title('cb分量');
subplot(4,3,6),imhist(cr);title('cr分量');
%%

%%HSV颜色空间
hsv=rgb2hsv(im);
h=hsv(:,:,1);%H即色调,表示颜色的种类，取值范围为[0,1]，相应的颜色从红，黄，绿，蓝绿，蓝，紫到黑变化
s=hsv(:,:,2);%s即饱和度，取值范围为[0,1],相应的颜色从未饱和（灰度）到完全饱和（无白色元素）变化。
v=hsv(:,:,3);%v即亮度，取值范围[0,1],相应的颜色逐渐变亮
subplot(4,3,7),imhist(h);title('h 色调分量');
subplot(4,3,8),imhist(s);title('s 饱和度分量');
subplot(4,3,9),imhist(v);title('v 亮度分量');
%%

%%Lab颜色空间
cform = makecform('srgb2lab');
Lab=applycform(im,cform);
L=Lab(:,:,1);%L是亮度层
a=Lab(:,:,2);%a是颜色在红绿轴的分量
b=Lab(:,:,3);%b是颜色在蓝黄轴的分量
subplot(4,3,10),imhist(L);title('L 亮度分量');
subplot(4,3,11),imhist(a);title('a 红绿分量');
subplot(4,3,12),imhist(b);title('b 蓝黄分量');
%%
%figure,imhist(b);title('b分量');
%figure,imhist(v);%title('v分量');

figure,
%%

%HSI颜色空间
hsi=rgb2hsi(im);
H=hsi(:,:,1);%H即色调
S=hsi(:,:,2);%S表示饱和度
I=hsi(:,:,3);%I表示亮度
subplot(3,3,1),imhist(H);title('H 色调分量');
subplot(3,3,2),imhist(S);title('S 饱和度分量');
subplot(3,3,3),imhist(I);title('I 亮度分量');
%%

%YUV颜色空间
yuv=rgb2yuv(im);
Y=yuv(:,:,1);%亮度
U=yuv(:,:,2);%色差
V=yuv(:,:,3);%色差
subplot(3,3,4),imhist(Y);title('Y');
subplot(3,3,5),imhist(U);title('U');
subplot(3,3,6),imhist(V);title('V');
%%

%YIQ颜色空间
yiq=rgb2yiq(im);
y=yiq(:,:,1);%亮度信息
i=yiq(:,:,2);%从橙色到青色变化
q=yiq(:,:,3);%从紫色到黄绿色变化
subplot(3,3,7),imhist(y);title('y 亮度');
subplot(3,3,8),imhist(i);title('i 橙色到青色');
subplot(3,3,9),imhist(q);title('q 紫色到黄绿色');
%%


end