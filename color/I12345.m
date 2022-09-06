A=imread('2.JPG');
B=A(50:100,100:150,:);
imwrite(B,'onion-part.png')
C=B;
subplot(1,2,1)
image(A);axis image;title('全部')
subplot(1,2,2)
image(C);axis image;title('部分')
