function allgraythresh(im)

figure,
%%

%%RGB空间
r=im(:,:,1);%红色分量
g=im(:,:,2);%绿色分量
b=im(:,:,3);%蓝色分量
subplot(4,3,1);level=graythresh(r);int_level=255*level;bw=im2bw(r,level);imshow(bw);title(['r分量:',num2str(int_level)]);
subplot(4,3,2);level=graythresh(g);int_level=255*level;bw=im2bw(g,level);imshow(bw);title(['g分量:',num2str(int_level)]);
subplot(4,3,3);level=graythresh(b);int_level=255*level;bw=im2bw(b,level);imshow(bw);title(['b分量:',num2str(int_level)]);
%在Command窗口输出灰度阈值
%disp(strcat('graythresh 计算灰度阈值：',num2str(uint8(level*255))))
%%

% YCBCR颜色空间
ycbcr=rgb2ycbcr(im);
y=ycbcr(:,:,1);%亮度
cb=ycbcr(:,:,2);%蓝色分量
cr=ycbcr(:,:,3);%红色分量
subplot(4,3,4);level=graythresh(y);int_level=255*level;bw=im2bw(y,level);imshow(bw);title(['y分量:',num2str(int_level)]);
subplot(4,3,5);level=graythresh(cb);int_level=255*level;bw=im2bw(cb,level);imshow(bw);title(['cb分量:',num2str(int_level)]);
subplot(4,3,6);level=graythresh(cr);int_level=255*level;bw=im2bw(cr,level);imshow(bw);title(['cr分量:',num2str(int_level)]);
%%

%%HSV颜色空间
hsv=rgb2hsv(im);
h=hsv(:,:,1);%H即色调,表示颜色的种类，取值范围为[0,1]，相应的颜色从红，黄，绿，蓝绿，蓝，紫到黑变化
s=hsv(:,:,2);%s即饱和度，取值范围为[0,1],相应的颜色从未饱和（灰度）到完全饱和（无白色元素）变化。
v=hsv(:,:,3);%v即亮度，取值范围[0,1],相应的颜色逐渐变亮
subplot(4,3,7);level=graythresh(h);int_level=255*level;bw=im2bw(h,level);imshow(bw);title(['h 色调分量:',num2str(int_level)]);
subplot(4,3,8);level=graythresh(s);int_level=255*level;bw=im2bw(s,level);imshow(bw);title(['s 饱和度分量:',num2str(int_level)]);
subplot(4,3,9);level=graythresh(v);int_level=255*level;bw=im2bw(v,level);imshow(bw);title(['v 亮度分量:',num2str(int_level)]);
%%

%%Lab颜色空间
cform = makecform('srgb2lab');
Lab=applycform(im,cform);
L=Lab(:,:,1);%L是亮度层
a=Lab(:,:,2);%a是颜色在红绿轴的分量
b=Lab(:,:,3);%b是颜色在蓝黄轴的分量
subplot(4,3,10);level=graythresh(L);int_level=255*level;bw=im2bw(L,level);imshow(bw);title(['L 亮度分量:',num2str(int_level)]);
subplot(4,3,11);level=graythresh(a);int_level=255*level;bw=im2bw(a,level);imshow(bw);title(['a 红绿分量:',num2str(int_level)]);
subplot(4,3,12);level=graythresh(b);int_level=255*level;bw=im2bw(b,level);imshow(bw);title(['b 蓝黄分量:',num2str(int_level)]);
%%

figure,
%%

%HSI颜色空间
hsi=rgb2hsi(im);
H=hsi(:,:,1);%H即色调
S=hsi(:,:,2);%S表示饱和度
I=hsi(:,:,3);%I表示亮度
subplot(3,3,1);level=graythresh(H);int_level=255*level;bw=im2bw(H,level);imshow(bw);title(['H 色调分量:',num2str(int_level)]);
subplot(3,3,2);level=graythresh(S);int_level=255*level;bw=im2bw(S,level);imshow(bw);title(['S 饱和度分量:',num2str(int_level)]);
subplot(3,3,3);level=graythresh(I);int_level=255*level;bw=im2bw(I,level);imshow(bw);title(['I 亮度分量:',num2str(int_level)]);
%%

%YUV颜色空间
yuv=rgb2yuv(im);
Y=yuv(:,:,1);
U=yuv(:,:,2);
V=yuv(:,:,3);
subplot(3,3,4);level=graythresh(Y);int_level=255*level;bw=im2bw(Y,level);imshow(bw);title(['Y:',num2str(int_level)]);
subplot(3,3,5);level=graythresh(U);int_level=255*level;bw=im2bw(U,level);imshow(bw);title(['U:',num2str(int_level)]);
subplot(3,3,6);level=graythresh(V);int_level=255*level;bw=im2bw(V,level);imshow(bw);title(['V:',num2str(int_level)]);
%%

%YIQ颜色空间
yiq=rgb2yiq(im);
y=yiq(:,:,1);%亮度信息
i=yiq(:,:,2);%从橙色到青色变化
q=yiq(:,:,3);%从紫色到黄绿色变化
subplot(3,3,7);level=graythresh(y);int_level=255*level;bw=im2bw(y,level);imshow(bw);title('y 亮度');title(['y 亮度:',num2str(int_level)]);
subplot(3,3,8);level=graythresh(i);int_level=255*level;bw=im2bw(i,level);imshow(bw);title('i 橙色到青色');title(['i 橙色到青色:',num2str(int_level)]);
subplot(3,3,9);level=graythresh(q);int_level=255*level;bw=im2bw(q,level);imshow(bw);title('q 紫色到黄绿色');title(['q 紫色到黄绿色:',num2str(int_level)]);
%%


end