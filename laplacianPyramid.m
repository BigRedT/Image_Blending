function pyr=laplacianPyramid(A)
levels=size(A,1)
pyr=cell(levels,1);
pyr{levels,1}=double(A{levels,1});
for i=levels-1:-1:1
    temp=imresize(A{i+1,1},size(A{i,1}));
    pyr{i,1}=double(A{i,1})-double(temp);
end
