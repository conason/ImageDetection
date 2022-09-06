function allgraythresh(im)

figure,
%%

%%RGB�ռ�
r=im(:,:,1);%��ɫ����
g=im(:,:,2);%��ɫ����
b=im(:,:,3);%��ɫ����
subplot(4,3,1);level=graythresh(r);int_level=255*level;bw=im2bw(r,level);imshow(bw);title(['r����:',num2str(int_level)]);
subplot(4,3,2);level=graythresh(g);int_level=255*level;bw=im2bw(g,level);imshow(bw);title(['g����:',num2str(int_level)]);
subplot(4,3,3);level=graythresh(b);int_level=255*level;bw=im2bw(b,level);imshow(bw);title(['b����:',num2str(int_level)]);
%��Command��������Ҷ���ֵ
%disp(strcat('graythresh ����Ҷ���ֵ��',num2str(uint8(level*255))))
%%

% YCBCR��ɫ�ռ�
ycbcr=rgb2ycbcr(im);
y=ycbcr(:,:,1);%����
cb=ycbcr(:,:,2);%��ɫ����
cr=ycbcr(:,:,3);%��ɫ����
subplot(4,3,4);level=graythresh(y);int_level=255*level;bw=im2bw(y,level);imshow(bw);title(['y����:',num2str(int_level)]);
subplot(4,3,5);level=graythresh(cb);int_level=255*level;bw=im2bw(cb,level);imshow(bw);title(['cb����:',num2str(int_level)]);
subplot(4,3,6);level=graythresh(cr);int_level=255*level;bw=im2bw(cr,level);imshow(bw);title(['cr����:',num2str(int_level)]);
%%

%%HSV��ɫ�ռ�
hsv=rgb2hsv(im);
h=hsv(:,:,1);%H��ɫ��,��ʾ��ɫ�����࣬ȡֵ��ΧΪ[0,1]����Ӧ����ɫ�Ӻ죬�ƣ��̣����̣������ϵ��ڱ仯
s=hsv(:,:,2);%s�����Ͷȣ�ȡֵ��ΧΪ[0,1],��Ӧ����ɫ��δ���ͣ��Ҷȣ�����ȫ���ͣ��ް�ɫԪ�أ��仯��
v=hsv(:,:,3);%v�����ȣ�ȡֵ��Χ[0,1],��Ӧ����ɫ�𽥱���
subplot(4,3,7);level=graythresh(h);int_level=255*level;bw=im2bw(h,level);imshow(bw);title(['h ɫ������:',num2str(int_level)]);
subplot(4,3,8);level=graythresh(s);int_level=255*level;bw=im2bw(s,level);imshow(bw);title(['s ���Ͷȷ���:',num2str(int_level)]);
subplot(4,3,9);level=graythresh(v);int_level=255*level;bw=im2bw(v,level);imshow(bw);title(['v ���ȷ���:',num2str(int_level)]);
%%

%%Lab��ɫ�ռ�
cform = makecform('srgb2lab');
Lab=applycform(im,cform);
L=Lab(:,:,1);%L�����Ȳ�
a=Lab(:,:,2);%a����ɫ�ں�����ķ���
b=Lab(:,:,3);%b����ɫ��������ķ���
subplot(4,3,10);level=graythresh(L);int_level=255*level;bw=im2bw(L,level);imshow(bw);title(['L ���ȷ���:',num2str(int_level)]);
subplot(4,3,11);level=graythresh(a);int_level=255*level;bw=im2bw(a,level);imshow(bw);title(['a ���̷���:',num2str(int_level)]);
subplot(4,3,12);level=graythresh(b);int_level=255*level;bw=im2bw(b,level);imshow(bw);title(['b ���Ʒ���:',num2str(int_level)]);
%%

figure,
%%

%HSI��ɫ�ռ�
hsi=rgb2hsi(im);
H=hsi(:,:,1);%H��ɫ��
S=hsi(:,:,2);%S��ʾ���Ͷ�
I=hsi(:,:,3);%I��ʾ����
subplot(3,3,1);level=graythresh(H);int_level=255*level;bw=im2bw(H,level);imshow(bw);title(['H ɫ������:',num2str(int_level)]);
subplot(3,3,2);level=graythresh(S);int_level=255*level;bw=im2bw(S,level);imshow(bw);title(['S ���Ͷȷ���:',num2str(int_level)]);
subplot(3,3,3);level=graythresh(I);int_level=255*level;bw=im2bw(I,level);imshow(bw);title(['I ���ȷ���:',num2str(int_level)]);
%%

%YUV��ɫ�ռ�
yuv=rgb2yuv(im);
Y=yuv(:,:,1);
U=yuv(:,:,2);
V=yuv(:,:,3);
subplot(3,3,4);level=graythresh(Y);int_level=255*level;bw=im2bw(Y,level);imshow(bw);title(['Y:',num2str(int_level)]);
subplot(3,3,5);level=graythresh(U);int_level=255*level;bw=im2bw(U,level);imshow(bw);title(['U:',num2str(int_level)]);
subplot(3,3,6);level=graythresh(V);int_level=255*level;bw=im2bw(V,level);imshow(bw);title(['V:',num2str(int_level)]);
%%

%YIQ��ɫ�ռ�
yiq=rgb2yiq(im);
y=yiq(:,:,1);%������Ϣ
i=yiq(:,:,2);%�ӳ�ɫ����ɫ�仯
q=yiq(:,:,3);%����ɫ������ɫ�仯
subplot(3,3,7);level=graythresh(y);int_level=255*level;bw=im2bw(y,level);imshow(bw);title('y ����');title(['y ����:',num2str(int_level)]);
subplot(3,3,8);level=graythresh(i);int_level=255*level;bw=im2bw(i,level);imshow(bw);title('i ��ɫ����ɫ');title(['i ��ɫ����ɫ:',num2str(int_level)]);
subplot(3,3,9);level=graythresh(q);int_level=255*level;bw=im2bw(q,level);imshow(bw);title('q ��ɫ������ɫ');title(['q ��ɫ������ɫ:',num2str(int_level)]);
%%


end