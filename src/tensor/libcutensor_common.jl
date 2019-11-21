# Automatically generated using Clang.jl


const CUTENSOR_MAJOR = 1
const CUTENSOR_MINOR = 0
const CUTENSOR_PATCH = 0

@cenum cutensorAlgo_t::Int32 begin
    CUTENSOR_ALGO_GETT = -4
    CUTENSOR_ALGO_TGETT = -3
    CUTENSOR_ALGO_TTGT = -2
    CUTENSOR_ALGO_DEFAULT = -1
end

@cenum cutensorWorksizePreference_t::UInt32 begin
    CUTENSOR_WORKSPACE_MIN = 1
    CUTENSOR_WORKSPACE_RECOMMENDED = 2
    CUTENSOR_WORKSPACE_MAX = 3
end

@cenum cutensorOperator_t::UInt32 begin
    CUTENSOR_OP_IDENTITY = 1
    CUTENSOR_OP_SQRT = 2
    CUTENSOR_OP_RELU = 8
    CUTENSOR_OP_CONJ = 9
    CUTENSOR_OP_RCP = 10
    CUTENSOR_OP_SIGMOID = 11
    CUTENSOR_OP_TANH = 12
    CUTENSOR_OP_EXP = 22
    CUTENSOR_OP_LOG = 23
    CUTENSOR_OP_ABS = 24
    CUTENSOR_OP_NEG = 25
    CUTENSOR_OP_SIN = 26
    CUTENSOR_OP_COS = 27
    CUTENSOR_OP_TAN = 28
    CUTENSOR_OP_SINH = 29
    CUTENSOR_OP_COSH = 30
    CUTENSOR_OP_ASIN = 31
    CUTENSOR_OP_ACOS = 32
    CUTENSOR_OP_ATAN = 33
    CUTENSOR_OP_ASINH = 34
    CUTENSOR_OP_ACOSH = 35
    CUTENSOR_OP_ATANH = 36
    CUTENSOR_OP_CEIL = 37
    CUTENSOR_OP_FLOOR = 38
    CUTENSOR_OP_ADD = 3
    CUTENSOR_OP_MUL = 5
    CUTENSOR_OP_MAX = 6
    CUTENSOR_OP_MIN = 7
    CUTENSOR_OP_UNKNOWN = 126
end

@cenum cutensorStatus_t::UInt32 begin
    CUTENSOR_STATUS_SUCCESS = 0
    CUTENSOR_STATUS_NOT_INITIALIZED = 1
    CUTENSOR_STATUS_ALLOC_FAILED = 3
    CUTENSOR_STATUS_INVALID_VALUE = 7
    CUTENSOR_STATUS_ARCH_MISMATCH = 8
    CUTENSOR_STATUS_MAPPING_ERROR = 11
    CUTENSOR_STATUS_EXECUTION_FAILED = 13
    CUTENSOR_STATUS_INTERNAL_ERROR = 14
    CUTENSOR_STATUS_NOT_SUPPORTED = 15
    CUTENSOR_STATUS_LICENSE_ERROR = 16
    CUTENSOR_STATUS_CUBLAS_ERROR = 17
    CUTENSOR_STATUS_CUDA_ERROR = 18
    CUTENSOR_STATUS_INSUFFICIENT_WORKSPACE = 19
    CUTENSOR_STATUS_INSUFFICIENT_DRIVER = 20
end

@cenum cutensorComputeType_t::UInt32 begin
    CUTENSOR_R_MIN_16F = 1
    CUTENSOR_C_MIN_16F = 2
    CUTENSOR_R_MIN_32F = 4
    CUTENSOR_C_MIN_32F = 8
    CUTENSOR_R_MIN_64F = 16
    CUTENSOR_C_MIN_64F = 32
    CUTENSOR_R_MIN_8U = 64
    CUTENSOR_R_MIN_32U = 128
    CUTENSOR_R_MIN_8I = 256
    CUTENSOR_R_MIN_32I = 512
end

function cutensorComputeType(T::DataType)
    if T == Float32
        return CUTENSOR_R_MIN_32F
    elseif T == ComplexF32
        return CUTENSOR_C_MIN_32F
    elseif T == Float16
        return CUTENSOR_R_MIN_16F
    elseif T == ComplexF16
        return CUTENSOR_C_MIN_16F
    elseif T == Float64
        return CUTENSOR_R_MIN_64F
    elseif T == ComplexF64
        return CUTENSOR_C_MIN_64F
    elseif T == Int8
        return CUTENSOR_R_MIN_8I
    elseif T == Int32
        return CUTENSOR_R_MIN_32I
    elseif T == UInt8
        return CUTENSOR_R_MIN_8U
    elseif T == UInt32
        return CUTENSOR_R_MIN_32U
    else
        throw(ArgumentError("cutensorComputeType equivalent for input type $T does not exist!"))
    end
end


struct cutensorHandle_t
    fields::NTuple{512, Int64}
end

struct cutensorTensorDescriptor_t
    fields::NTuple{64, Int64}
end

struct cutensorContractionDescriptor_t
    fields::NTuple{256, Int64}
end

struct cutensorContractionPlan_t
    fields::NTuple{640, Int64}
end

struct cutensorContractionFind_t
    fields::NTuple{64, Int64}
end
