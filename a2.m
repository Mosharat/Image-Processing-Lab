a =imread('2.jpg');
subplot(2,2,1);
imshow(a)
x=im2bw(a);
subplot(2,2,2);
imshow(x);
black=sum(sum(x==0));
white1=sum(sum(x==1));
total_pixel=size(x,1)*size(x,2);
count=0;
ten_percent_pixel=round((white1*10)/100);

for m=1:size(x,1)

    for n=1:size(x,2)

        if x(m,n) ==0
            x(m,n)=1;
            count=count+1;
            if count>ten_percent_pixel+1
                break
            end
        end
    end

end

white2=sum(sum(x==1));
subplot(2,2,3);
imshow(x);
title('Adding 10% one in Image');