{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Half.TensorTopK where

import Foreign
import Foreign.C.Types
import Data.Word
import Data.Int
import Torch.Types.TH
import Torch.Types.THC

-- | c_topk :  state topK indices input k dim dir sorted -> void
foreign import ccall "THCTensorTopK.h THCudaHalfTensor_topk"
  c_topk :: Ptr C'THCState -> Ptr C'THCudaHalfTensor -> Ptr C'THCudaLongTensor -> Ptr C'THCudaHalfTensor -> CLLong -> CInt -> CInt -> CInt -> IO ()

-- | p_topk : Pointer to function : state topK indices input k dim dir sorted -> void
foreign import ccall "THCTensorTopK.h &THCudaHalfTensor_topk"
  p_topk :: FunPtr (Ptr C'THCState -> Ptr C'THCudaHalfTensor -> Ptr C'THCudaLongTensor -> Ptr C'THCudaHalfTensor -> CLLong -> CInt -> CInt -> CInt -> IO ())