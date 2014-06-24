function pyr=gaussianPyramid(A,levels,sigma,hsize)
pyr=cell(levels,1);
h=fspecial('gaussian',hsize,sigma);
pyr{1,1}=A;
for i=2:levels
    temp=imfilter(pyr{i-1,1},h,'symmetric','corr');
    pyr{i,1}=temp(1:2:end,1:2:end);
end
