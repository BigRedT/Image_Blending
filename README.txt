README
-----------------------------------------------------------------

Files than can be run directly are:

-mainfile.m
Code for Image Blending of grayscale images

-mainfileColor.m
Code for Image Blending of RGB images

Both these files make use of the images in 'images2' folder
-----------------------------------------------------------------
Other auxiliary files used are:

*****************************************************************
-gaussianPyramid.m
Usage: pyr=gaussianPyramid(A,levels,sigma,hsize)
Input:
A - the input image
levels - the number of levels in the gaussian pyramid
sigma - standard deviation of gaussian kernel
hsize - the size of gaussian kernel 
Output:
pyr - gaussian pyramid in the form of a cell of size levels x 1

*****************************************************************
-laplacianPyramid.m
Usage: pyr=laplacianPyramid(A)
Input:
A -  the input gaussian pyramid
Output:
pyr - laplacian pyramid in the form of a cell of size levels x 1

*****************************************************************
-blendPyramid.m
Usage: pyr=blendPyramid(pyrA,pyrB,pyrMask)
Input:
pyrA - laplacian pyramid of first image
pyrB - laplacian pyramid of second image
pyrMask - gaussian pyramid of the mask
Output:
pyr - blended laplacian pyramid

*****************************************************************
-collapsePyramid.m
Usage: img=collapsePyramid(A)
Input:
A - laplacian pyramid
Output:
img - image reconstructed from the laplacian pyramid

*****************************************************************
-showPyramid.m
Usage: showPyramid(A)
Input: 
A -pyramid to be displayed



