# leetGPU

1. [Vector Addition](https://leetgpu.com/challenges/vector-addition) - adds 2 vectors `vecAdd.cu`
2. [Matrix Multiplication](https://leetgpu.com/challenges/matrix-multiplication) - naive matrix multiplication `matMul.cu`
3. [Matrix Transpose](https://leetgpu.com/challenges/matrix-transpose) - transpose the matrix A[i][j] -> B[j][i]       `matTrans.cu`
4. [Color Inversion](https://leetgpu.com/challenges/color-inversion) - invert color of an image
5. [1D Convolution](https://leetgpu.com/challenges/1d-convolution) - implement 1D convolution operation
6. [Reverse Array](https://leetgpu.com/challenges/reverse-array) - reverse an array in-place
7. [ReLU](https://leetgpu.com/challenges/relu) - implement a program that performs
the rectified Linier Unit (ReLU) activation function
(im trying to avoid divergence, so i use CUDA's math function fmaxf(), which return the largest of two floats,
this translate to only one instruction, no branching)
