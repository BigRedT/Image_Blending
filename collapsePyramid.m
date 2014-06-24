function img=collapsePyramid(A)
levels=size(A,1)
for i=levels-1:-1:1
    temp=imresize(uint8(A{i+1,1}),size(A{i,1}));
    A{i,1}=A{i,1}+double(temp);
end
img=uint8(A{1,1});
