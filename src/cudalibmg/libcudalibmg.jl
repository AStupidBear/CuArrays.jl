# Automatically-generated headers for cudalibmg
#
# DO NOT EDIT THIS FILE DIRECTLY.


# Julia wrapper for header: cudalibmg.h
# Automatically generated using Clang.jl

function cudaLibMgGetVersion()
    initialize_api()
    @runtime_ccall((:cudaLibMgGetVersion, libcudalibmg()), Csize_t, ())
end

function cudaLibMgGetCudartVersion()
    initialize_api()
    @runtime_ccall((:cudaLibMgGetCudartVersion, libcudalibmg()), Csize_t, ())
end

function cudaLibMgCreateMatrixDesc(desc, numRows, numCols, rowBlockSize, colBlockSize,
                                   dataType, grid)
    initialize_api()
    @runtime_ccall((:cudaLibMgCreateMatrixDesc, libcudalibmg()), cudaLibMgStatus_t,
                   (Ptr{cudaLibMgMatrixDesc_t}, Int64, Int64, Int64, Int64,
                    cudaDataType_t, cudaLibMgGrid_t),
                   desc, numRows, numCols, rowBlockSize, colBlockSize, dataType, grid)
end

function cudaLibMgDestroyMatrixDesc(desc)
    initialize_api()
    @runtime_ccall((:cudaLibMgDestroyMatrixDesc, libcudalibmg()), cudaLibMgStatus_t,
                   (cudaLibMgMatrixDesc_t,),
                   desc)
end

function cudaLibMgCreateDeviceGrid(grid, numRowDevices, numColDevices, deviceIds, mapping)
    initialize_api()
    @runtime_ccall((:cudaLibMgCreateDeviceGrid, libcudalibmg()), cudaLibMgStatus_t,
                   (Ptr{cudaLibMgGrid_t}, Int32, Int32, Ptr{Int32}, cudaLibMgGridMapping_t),
                   grid, numRowDevices, numColDevices, deviceIds, mapping)
end

function cudaLibMgDestroyGrid(grid)
    initialize_api()
    @runtime_ccall((:cudaLibMgDestroyGrid, libcudalibmg()), cudaLibMgStatus_t,
                   (cudaLibMgGrid_t,),
                   grid)
end

function cudaLibMgGetLocalMatrixDimensions(desc, numRows, numCols)
    initialize_api()
    @runtime_ccall((:cudaLibMgGetLocalMatrixDimensions, libcudalibmg()), cudaLibMgStatus_t,
                   (cudaLibMgMatrixDesc_t, Ptr{Int64}, Ptr{Int64}),
                   desc, numRows, numCols)
end
