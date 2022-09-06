function allshow(im)

figure,
%%

%%RGB�ռ�
r=im(:,:,1);%��ɫ����
g=im(:,:,2);%��ɫ����
b=im(:,:,3);%��ɫ����
subplot(4,3,1),imshow(r);title('r����');
subplot(4,3,2),imshow(g);title('g����');
subplot(4,3,3),imshow(b);title('b����');

%%

% YCBCR��ɫ�ռ�
ycbcr=rgb2ycbcr(im);
y=ycbcr(:,:,1);%����
cb=ycbcr(:,:,2);%��ɫ����
cr=ycbcr(:,:,3);%��ɫ����
subplot(4,3,4),imshow(y);title('y����');
subplot(4,3,5),imshow(cb);title('cb����');
subplot(4,3,6),imshow(cr);title('cr����');
%%

%%HSV��ɫ�ռ�
hsv=rgb2hsv(im);
h=hsv(:,:,1);%H��ɫ��,��ʾ��ɫ�����࣬ȡֵ��ΧΪ[0,1]����Ӧ����ɫ�Ӻ죬�ƣ��̣����̣������ϵ��ڱ仯
s=hsv(:,:,2);%s�����Ͷȣ�ȡֵ��ΧΪ[0,1],��Ӧ����ɫ��δ���ͣ��Ҷȣ�����ȫ���ͣ��ް�ɫԪ�أ��仯��
v=hsv(:,:,3);%v�����ȣ�ȡֵ��Χ[0,1],��Ӧ����ɫ�𽥱���
subplot(4,3,7),imshow(h);title('h ɫ������');
subplot(4,3,8),imshow(s);title('s ���Ͷȷ���');
subplot(4,3,9),imshow(v);title('v ���ȷ���');
%%

%%Lab��ɫ�ռ�
cform = makecform('srgb2lab');
Lab=applycform(im,cform);
L=Lab(:,:,1);%L�����Ȳ�
a=Lab(:,:,2);%a����ɫ�ں�����ķ���
b=Lab(:,:,3);%b����ɫ��������ķ���
subplot(4,3,10),imshow(L);title('L ���ȷ���');
subplot(4,3,11),imshow(a);title('a ���̷���');
subplot(4,3,12),imshow(b);title('b ���Ʒ���');
%%


figure,
%%

%HSI��ɫ�ռ�
hsi=rgb2hsi(im);
H=hsi(:,:,1);%H��ɫ��
S=hsi(:,:,2);%S��ʾ���Ͷ�
I=hsi(:,:,3);%I��ʾ����
subplot(3,3,1),imshow(H);title('H ɫ������');
subplot(3,3,2),imshow(S);title('S ���Ͷȷ���');
subplot(3,3,3),imshow(I);title('I ���ȷ���');
%%

%YUV��ɫ�ռ�
yuv=rgb2yuv(im);
Y=yuv(:,:,1);
U=yuv(:,:,2);
V=yuv(:,:,3);
subplot(3,3,4),imshow(Y);title('Y');
subplot(3,3,5),imshow(U);title('U');
subplot(3,3,6),imshow(V);title('V');
%%

%YIQ��ɫ�ռ�
yiq=rgb2yiq(im);
y=yiq(:,:,1);%������Ϣ
i=yiq(:,:,2);%�ӳ�ɫ����ɫ�仯
q=yiq(:,:,3);%����ɫ������ɫ�仯
subplot(3,3,7),imshow(y);title('y ����');
subplot(3,3,8),imshow(i);title('i ��ɫ����ɫ');
subplot(3,3,9),imshow(q);title('q ��ɫ������ɫ');
%%


end