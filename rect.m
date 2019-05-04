I=imread('rectan.jpg');

I=rgb2gray(I);



BW = edge(I, 'prewitt');

figure, imshow(BW);



[H,T,R] = hough(BW);



P  = houghpeaks(H,5,'threshold', ceil(0.3*max(H(:))))

lines = houghlines(BW,T,R,P)



figure, imshow(I), hold on



for k = 1:4

   xy = [lines(k).point1; lines(k).point2]

   plot(xy(:,1), xy(:,2), 'LineWidth', 2, 'Color','red');

end