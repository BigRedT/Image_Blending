function pyr=blendPyramid(pyrA,pyrB,pyrMask)
levels=size(pyrMask,1);
pyr=cell(levels,1);
for l=1:levels
    pyr{l,1}=(1-pyrMask{l,1}).*pyrA{l,1}+(pyrMask{l,1}).*pyrB{l,1};
end
