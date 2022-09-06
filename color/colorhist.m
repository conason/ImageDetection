function allhist(im)

figure,
%%

%%RGB�ռ�
r=im(:,:,1);%��ɫ����
g=im(:,:,2);%��ɫ����
b=im(:,:,3);%��ɫ����
subplot(4,3,1),imhist(r);title('r����');
subplot(4,3,2),imhist(g);title('g����');
subplot(4,3,3),imhist(b);title('b����');
%%

% YCBCR��ɫ�ռ�
ycbcr=rgb2ycbcr(im);
y=ycbcr(:,:,1);%����
cb=ycbcr(:,:,2);%��ɫ����
cr=ycbcr(:,:,3);%��ɫ����
subplot(4,3,4),imhist(y);title('y����');
subplot(4,3,5),imhist(cb);title('cb����');
subplot(4,3,6),imhist(cr);title('cr����');
%%

%%HSV��ɫ�ռ�
hsv=rgb2hsv(im);
h=hsv(:,:,1);%H��ɫ��,��ʾ��ɫ�����࣬ȡֵ��ΧΪ[0,1]����Ӧ����ɫ�Ӻ죬�ƣ��̣����̣������ϵ��ڱ仯
s=hsv(:,:,2);%s�����Ͷȣ�ȡֵ��ΧΪ[0,1],��Ӧ����ɫ��δ���ͣ��Ҷȣ�����ȫ���ͣ��ް�ɫԪ�أ��仯��
v=hsv(:,:,3);%v�����ȣ�ȡֵ��Χ[0,1],��Ӧ����ɫ�𽥱���
subplot(4,3,7),imhist(h);title('h ɫ������');
subplot(4,3,8),imhist(s);title('s ���Ͷȷ���');
subplot(4,3,9),imhist(v);title('v ���ȷ���');
%%

%%Lab��ɫ�ռ�
cform = makecform('srgb2lab');
Lab=applycform(im,cform);
L=Lab(:,:,1);%L�����Ȳ�
a=Lab(:,:,2);%a����ɫ�ں�����ķ���
b=Lab(:,:,3);%b����ɫ��������ķ���
subplot(4,3,10),imhist(L);title('L ���ȷ���');
subplot(4,3,11),imhist(a);title('a ���̷���');
subplot(4,3,12),imhist(b);title('b ���Ʒ���');
%%
%figure,imhist(b);title('b����');
%figure,imhist(v);%title('v����');

figure,
%%

%HSI��ɫ�ռ�
hsi=rgb2hsi(im);
H=hsi(:,:,1);%H��ɫ��
S=hsi(:,:,2);%S��ʾ���Ͷ�
I=hsi(:,:,3);%I��ʾ����
subplot(3,3,1),imhist(H);title('H ɫ������');
subplot(3,3,2),imhist(S);title('S ���Ͷȷ���');
subplot(3,3,3),imhist(I);title('I ���ȷ���');
%%

%YUV��ɫ�ռ�
yuv=rgb2yuv(im);
Y=yuv(:,:,1);%����
U=yuv(:,:,2);%ɫ��
V=yuv(:,:,3);%ɫ��
subplot(3,3,4),imhist(Y);title('Y');
subplot(3,3,5),imhist(U);title('U');
subplot(3,3,6),imhist(V);title('V');
%%

%YIQ��ɫ�ռ�
yiq=rgb2yiq(im);
y=yiq(:,:,1);%������Ϣ
i=yiq(:,:,2);%�ӳ�ɫ����ɫ�仯
q=yiq(:,:,3);%����ɫ������ɫ�仯
subplot(3,3,7),imhist(y);title('y ����');
subplot(3,3,8),imhist(i);title('i ��ɫ����ɫ');
subplot(3,3,9),imhist(q);title('q ��ɫ������ɫ');
%%


end