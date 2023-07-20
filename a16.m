a=imread('1.jpg');
subplot(2,2,1);
imshow(a);
title('RGB image');
I=double(a)/255;

R=I(:,:,1);
G=I(:,:,2);
B=I(:,:,3);
num=1/2*((R-G)+(R-B));
denom=((R-G).^2+((R-B).*(G-B))).^0.5;

H=acosd(num./(denom+0.000001));

H(B>G)=360-H(B>G);
H=H/360;

S=1-(3./(sum(I,3)+0.000001)).*min(I,[],3);

I=sum(I,3)./3;

HSI=zeros(size(a));
HSI(:,:,1)=H;
HSI(:,:,2)=S;
HSI(:,:,3)=I;

subplot(2,2,2);
imshow(HSI);
title('HSI image');