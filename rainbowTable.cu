__device__ unsigned int fnv1a_hash(int input) {
    const unsigned int FNV_PRIME = 16777619;
    const unsigned int OFFSET_BASIS = 2166136261;

    unsigned int hash = OFFSET_BASIS;

    for (int byte_pos = 0; byte_pos < 4; byte_pos++) {
        unsigned char byte = (input >> (byte_pos * 8)) & 0xFF;
        hash = (hash ^ byte) * FNV_PRIME;
    }

    return hash;
}

__global__ void fnv1a_hash_kernel(const int* input, unsigned int* output, int N, int R) {
    int x = blockDim.x * blockIdx.x + threadIdx.x;

    if(x < N) {
        int hash = input[x];
        for(int i = 0; i < R; i++) {
            hash = fnv1a_hash(hash);
        }

        output[x] = hash;
    }
}
