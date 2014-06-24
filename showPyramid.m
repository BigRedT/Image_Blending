function showPyramid(A)

levels=size(A,1)
for l=1:levels
    mini=min(min(A{l,1}));
    maxi=max(max(A{l,1}));
    temp=((A{l,1}-mini)/(maxi-mini))*255;
    figure, imshow(uint8(temp));
    colormap(gray);
end