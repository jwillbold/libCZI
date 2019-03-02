TEMPLATE = lib

# add_library(libCZIStatic STATIC ${LIBCZISRCFILES} ${LIBCZISRCEIGENFILES})
CONFIG += shared_and_static build_all
#CONFIG = static

# file(GLOB LIBCZISRCFILES "*.h" "*.cpp" "*.hpp")
# file(GLOB_RECURSE LIBCZISRCEIGENFILES "eigen/*")
#
# add_library(libCZI SHARED ${LIBCZISRCFILES} ${LIBCZISRCEIGENFILES})
TARGET = libCZI

# #add_library(NaCZIrLib SHARED ...)
#SOURCES += CreateBitmap.cpp CziDimensionInfo.cpp CziMetadata.cpp CziMetadataDocumentInfo.cpp CziMetadataSegment.cpp CziParse.cpp CZIReader.cpp CziSubBlock.cpp CziSubBlockDirectory.cpp CziUtils.cpp decoder.cpp DimCoordinate.cpp dllmain.cpp MultiChannelTileCompositor.cpp NaCZIrLib.cpp NaCZIr_Utilities.cpp SingleChannelTileAccessor.cpp SingleChannelTileCompositor.cpp stdafx.cpp stdAllocator.cpp utilities.cpp pugixml.cpp CziDisplaySettings.cpp NaCZIr_Site.cpp BitmapOperations.cpp MD5Sum.cpp splines.cpp SingleChannelPyramidLevelTileAccessor.cpp SingleChannelAccessorBase.cpp SingleChannelScalingTileAccessor.cpp StreamImpl.cpp
#HEADERS += bitmapData.h CreateBitmap.h CziDataStructs.h CziDimensionInfo.h CziMetadata.h CziMetadataDocumentInfo.h CziMetadataSegment.h CziParse.h CZIReader.h CziStructs.h CziSubBlock.h CziSubBlockDirectory.h CziUtils.h datastore.h decoder.h DimCoordinate.h DimensionIndexExtended.h ImportExport.h MultiChannelTileCompositor.h NaCZIr.h NaCZIr_Compositor.h NaCZIr_DimCoordinate.h NaCZIr_Metadata.h NaCZIr_Pixels.h NaCZIr_Utilities.h readerwriterlocker.h SingleChannelTileAccessor.h SingleChannelTileCompositor.h stdafx.h stdAllocator.h targetver.h utilities.h pugiconfig.hpp pugiconfig.hpp CziDisplaySettings.h NaCZIr_Site.h BitmapOperations.h MD5Sum.h splines.h Site.h priv_guiddef.h NaCZIr_exceptions.h SingleChannelPyramidLevelTileAccessor.h SingleChannelAccessorBase.h SingleChannelScalingTileAccessor.h  StreamImpl.h

# SET_TARGET_PROPERTIES (libCZI PROPERTIES DEFINE_SYMBOL  "LIBCZI_EXPORTS" )
DEFINES += LIBCZI_EXPORTS

#target_link_libraries (libCZI PRIVATE JxrDecodeStatic)
LIBS += -L$$OUT_PWD/../JxrDecode/ -lJxrDecodeStatic

PRECOMPILED_HEADER = stdafx.h

HEADERS += \
    eigen/src/Cholesky/LDLT.h \
    eigen/src/Cholesky/LLT.h \
    eigen/src/Cholesky/LLT_MKL.h \
    eigen/src/CholmodSupport/CholmodSupport.h \
    eigen/src/Core/arch/AltiVec/Complex.h \
    eigen/src/Core/arch/AltiVec/PacketMath.h \
    eigen/src/Core/arch/Default/Settings.h \
    eigen/src/Core/arch/NEON/Complex.h \
    eigen/src/Core/arch/NEON/PacketMath.h \
    eigen/src/Core/arch/SSE/Complex.h \
    eigen/src/Core/arch/SSE/MathFunctions.h \
    eigen/src/Core/arch/SSE/PacketMath.h \
    eigen/src/Core/products/CoeffBasedProduct.h \
    eigen/src/Core/products/GeneralBlockPanelKernel.h \
    eigen/src/Core/products/GeneralMatrixMatrix.h \
    eigen/src/Core/products/GeneralMatrixMatrix_MKL.h \
    eigen/src/Core/products/GeneralMatrixMatrixTriangular.h \
    eigen/src/Core/products/GeneralMatrixMatrixTriangular_MKL.h \
    eigen/src/Core/products/GeneralMatrixVector.h \
    eigen/src/Core/products/GeneralMatrixVector_MKL.h \
    eigen/src/Core/products/Parallelizer.h \
    eigen/src/Core/products/SelfadjointMatrixMatrix.h \
    eigen/src/Core/products/SelfadjointMatrixMatrix_MKL.h \
    eigen/src/Core/products/SelfadjointMatrixVector.h \
    eigen/src/Core/products/SelfadjointMatrixVector_MKL.h \
    eigen/src/Core/products/SelfadjointProduct.h \
    eigen/src/Core/products/SelfadjointRank2Update.h \
    eigen/src/Core/products/TriangularMatrixMatrix.h \
    eigen/src/Core/products/TriangularMatrixMatrix_MKL.h \
    eigen/src/Core/products/TriangularMatrixVector.h \
    eigen/src/Core/products/TriangularMatrixVector_MKL.h \
    eigen/src/Core/products/TriangularSolverMatrix.h \
    eigen/src/Core/products/TriangularSolverMatrix_MKL.h \
    eigen/src/Core/products/TriangularSolverVector.h \
    eigen/src/Core/util/BlasUtil.h \
    eigen/src/Core/util/Constants.h \
    eigen/src/Core/util/DisableStupidWarnings.h \
    eigen/src/Core/util/ForwardDeclarations.h \
    eigen/src/Core/util/Macros.h \
    eigen/src/Core/util/Memory.h \
    eigen/src/Core/util/Meta.h \
    eigen/src/Core/util/MKL_support.h \
    eigen/src/Core/util/NonMPL2.h \
    eigen/src/Core/util/ReenableStupidWarnings.h \
    eigen/src/Core/util/StaticAssert.h \
    eigen/src/Core/util/XprHelper.h \
    eigen/src/Core/Array.h \
    eigen/src/Core/ArrayBase.h \
    eigen/src/Core/ArrayWrapper.h \
    eigen/src/Core/Assign.h \
    eigen/src/Core/Assign_MKL.h \
    eigen/src/Core/BandMatrix.h \
    eigen/src/Core/Block.h \
    eigen/src/Core/BooleanRedux.h \
    eigen/src/Core/CommaInitializer.h \
    eigen/src/Core/CoreIterators.h \
    eigen/src/Core/CwiseBinaryOp.h \
    eigen/src/Core/CwiseNullaryOp.h \
    eigen/src/Core/CwiseUnaryOp.h \
    eigen/src/Core/CwiseUnaryView.h \
    eigen/src/Core/DenseBase.h \
    eigen/src/Core/DenseCoeffsBase.h \
    eigen/src/Core/DenseStorage.h \
    eigen/src/Core/Diagonal.h \
    eigen/src/Core/DiagonalMatrix.h \
    eigen/src/Core/DiagonalProduct.h \
    eigen/src/Core/Dot.h \
    eigen/src/Core/EigenBase.h \
    eigen/src/Core/Flagged.h \
    eigen/src/Core/ForceAlignedAccess.h \
    eigen/src/Core/Functors.h \
    eigen/src/Core/Fuzzy.h \
    eigen/src/Core/GeneralProduct.h \
    eigen/src/Core/GenericPacketMath.h \
    eigen/src/Core/GlobalFunctions.h \
    eigen/src/Core/IO.h \
    eigen/src/Core/Map.h \
    eigen/src/Core/MapBase.h \
    eigen/src/Core/MathFunctions.h \
    eigen/src/Core/Matrix.h \
    eigen/src/Core/MatrixBase.h \
    eigen/src/Core/NestByValue.h \
    eigen/src/Core/NoAlias.h \
    eigen/src/Core/NumTraits.h \
    eigen/src/Core/PermutationMatrix.h \
    eigen/src/Core/PlainObjectBase.h \
    eigen/src/Core/ProductBase.h \
    eigen/src/Core/Random.h \
    eigen/src/Core/Redux.h \
    eigen/src/Core/Ref.h \
    eigen/src/Core/Replicate.h \
    eigen/src/Core/ReturnByValue.h \
    eigen/src/Core/Reverse.h \
    eigen/src/Core/Select.h \
    eigen/src/Core/SelfAdjointView.h \
    eigen/src/Core/SelfCwiseBinaryOp.h \
    eigen/src/Core/SolveTriangular.h \
    eigen/src/Core/StableNorm.h \
    eigen/src/Core/Stride.h \
    eigen/src/Core/Swap.h \
    eigen/src/Core/Transpose.h \
    eigen/src/Core/Transpositions.h \
    eigen/src/Core/TriangularMatrix.h \
    eigen/src/Core/VectorBlock.h \
    eigen/src/Core/VectorwiseOp.h \
    eigen/src/Core/Visitor.h \
    eigen/src/Eigen2Support/Geometry/AlignedBox.h \
    eigen/src/Eigen2Support/Geometry/All.h \
    eigen/src/Eigen2Support/Geometry/AngleAxis.h \
    eigen/src/Eigen2Support/Geometry/Hyperplane.h \
    eigen/src/Eigen2Support/Geometry/ParametrizedLine.h \
    eigen/src/Eigen2Support/Geometry/Quaternion.h \
    eigen/src/Eigen2Support/Geometry/Rotation2D.h \
    eigen/src/Eigen2Support/Geometry/RotationBase.h \
    eigen/src/Eigen2Support/Geometry/Scaling.h \
    eigen/src/Eigen2Support/Geometry/Transform.h \
    eigen/src/Eigen2Support/Geometry/Translation.h \
    eigen/src/Eigen2Support/Block.h \
    eigen/src/Eigen2Support/Cwise.h \
    eigen/src/Eigen2Support/CwiseOperators.h \
    eigen/src/Eigen2Support/Lazy.h \
    eigen/src/Eigen2Support/LeastSquares.h \
    eigen/src/Eigen2Support/LU.h \
    eigen/src/Eigen2Support/Macros.h \
    eigen/src/Eigen2Support/MathFunctions.h \
    eigen/src/Eigen2Support/Memory.h \
    eigen/src/Eigen2Support/Meta.h \
    eigen/src/Eigen2Support/Minor.h \
    eigen/src/Eigen2Support/QR.h \
    eigen/src/Eigen2Support/SVD.h \
    eigen/src/Eigen2Support/TriangularSolver.h \
    eigen/src/Eigen2Support/VectorBlock.h \
    eigen/src/Eigenvalues/ComplexEigenSolver.h \
    eigen/src/Eigenvalues/ComplexSchur.h \
    eigen/src/Eigenvalues/ComplexSchur_MKL.h \
    eigen/src/Eigenvalues/EigenSolver.h \
    eigen/src/Eigenvalues/GeneralizedEigenSolver.h \
    eigen/src/Eigenvalues/GeneralizedSelfAdjointEigenSolver.h \
    eigen/src/Eigenvalues/HessenbergDecomposition.h \
    eigen/src/Eigenvalues/MatrixBaseEigenvalues.h \
    eigen/src/Eigenvalues/RealQZ.h \
    eigen/src/Eigenvalues/RealSchur.h \
    eigen/src/Eigenvalues/RealSchur_MKL.h \
    eigen/src/Eigenvalues/SelfAdjointEigenSolver.h \
    eigen/src/Eigenvalues/SelfAdjointEigenSolver_MKL.h \
    eigen/src/Eigenvalues/Tridiagonalization.h \
    eigen/src/Geometry/arch/Geometry_SSE.h \
    eigen/src/Geometry/AlignedBox.h \
    eigen/src/Geometry/AngleAxis.h \
    eigen/src/Geometry/EulerAngles.h \
    eigen/src/Geometry/Homogeneous.h \
    eigen/src/Geometry/Hyperplane.h \
    eigen/src/Geometry/OrthoMethods.h \
    eigen/src/Geometry/ParametrizedLine.h \
    eigen/src/Geometry/Quaternion.h \
    eigen/src/Geometry/Rotation2D.h \
    eigen/src/Geometry/RotationBase.h \
    eigen/src/Geometry/Scaling.h \
    eigen/src/Geometry/Transform.h \
    eigen/src/Geometry/Translation.h \
    eigen/src/Geometry/Umeyama.h \
    eigen/src/Householder/BlockHouseholder.h \
    eigen/src/Householder/Householder.h \
    eigen/src/Householder/HouseholderSequence.h \
    eigen/src/IterativeLinearSolvers/BasicPreconditioners.h \
    eigen/src/IterativeLinearSolvers/BiCGSTAB.h \
    eigen/src/IterativeLinearSolvers/ConjugateGradient.h \
    eigen/src/IterativeLinearSolvers/IncompleteLUT.h \
    eigen/src/IterativeLinearSolvers/IterativeSolverBase.h \
    eigen/src/Jacobi/Jacobi.h \
    eigen/src/LU/arch/Inverse_SSE.h \
    eigen/src/LU/Determinant.h \
    eigen/src/LU/FullPivLU.h \
    eigen/src/LU/Inverse.h \
    eigen/src/LU/PartialPivLU.h \
    eigen/src/LU/PartialPivLU_MKL.h \
    eigen/src/MetisSupport/MetisSupport.h \
    eigen/src/misc/blas.h \
    eigen/src/misc/Image.h \
    eigen/src/misc/Kernel.h \
    eigen/src/misc/Solve.h \
    eigen/src/misc/SparseSolve.h \
    eigen/src/OrderingMethods/Amd.h \
    eigen/src/OrderingMethods/Eigen_Colamd.h \
    eigen/src/OrderingMethods/Ordering.h \
    eigen/src/PardisoSupport/PardisoSupport.h \
    eigen/src/PaStiXSupport/PaStiXSupport.h \
    eigen/src/plugins/ArrayCwiseBinaryOps.h \
    eigen/src/plugins/ArrayCwiseUnaryOps.h \
    eigen/src/plugins/BlockMethods.h \
    eigen/src/plugins/CommonCwiseBinaryOps.h \
    eigen/src/plugins/CommonCwiseUnaryOps.h \
    eigen/src/plugins/MatrixCwiseBinaryOps.h \
    eigen/src/plugins/MatrixCwiseUnaryOps.h \
    eigen/src/QR/ColPivHouseholderQR.h \
    eigen/src/QR/ColPivHouseholderQR_MKL.h \
    eigen/src/QR/FullPivHouseholderQR.h \
    eigen/src/QR/HouseholderQR.h \
    eigen/src/QR/HouseholderQR_MKL.h \
    eigen/src/SparseCholesky/SimplicialCholesky.h \
    eigen/src/SparseCholesky/SimplicialCholesky_impl.h \
    eigen/src/SparseCore/AmbiVector.h \
    eigen/src/SparseCore/CompressedStorage.h \
    eigen/src/SparseCore/ConservativeSparseSparseProduct.h \
    eigen/src/SparseCore/MappedSparseMatrix.h \
    eigen/src/SparseCore/SparseBlock.h \
    eigen/src/SparseCore/SparseColEtree.h \
    eigen/src/SparseCore/SparseCwiseBinaryOp.h \
    eigen/src/SparseCore/SparseCwiseUnaryOp.h \
    eigen/src/SparseCore/SparseDenseProduct.h \
    eigen/src/SparseCore/SparseDiagonalProduct.h \
    eigen/src/SparseCore/SparseDot.h \
    eigen/src/SparseCore/SparseFuzzy.h \
    eigen/src/SparseCore/SparseMatrix.h \
    eigen/src/SparseCore/SparseMatrixBase.h \
    eigen/src/SparseCore/SparsePermutation.h \
    eigen/src/SparseCore/SparseProduct.h \
    eigen/src/SparseCore/SparseRedux.h \
    eigen/src/SparseCore/SparseSelfAdjointView.h \
    eigen/src/SparseCore/SparseSparseProductWithPruning.h \
    eigen/src/SparseCore/SparseTranspose.h \
    eigen/src/SparseCore/SparseTriangularView.h \
    eigen/src/SparseCore/SparseUtil.h \
    eigen/src/SparseCore/SparseVector.h \
    eigen/src/SparseCore/SparseView.h \
    eigen/src/SparseCore/TriangularSolver.h \
    eigen/src/SparseLU/SparseLU.h \
    eigen/src/SparseLU/SparseLU_column_bmod.h \
    eigen/src/SparseLU/SparseLU_column_dfs.h \
    eigen/src/SparseLU/SparseLU_copy_to_ucol.h \
    eigen/src/SparseLU/SparseLU_gemm_kernel.h \
    eigen/src/SparseLU/SparseLU_heap_relax_snode.h \
    eigen/src/SparseLU/SparseLU_kernel_bmod.h \
    eigen/src/SparseLU/SparseLU_Memory.h \
    eigen/src/SparseLU/SparseLU_panel_bmod.h \
    eigen/src/SparseLU/SparseLU_panel_dfs.h \
    eigen/src/SparseLU/SparseLU_pivotL.h \
    eigen/src/SparseLU/SparseLU_pruneL.h \
    eigen/src/SparseLU/SparseLU_relax_snode.h \
    eigen/src/SparseLU/SparseLU_Structs.h \
    eigen/src/SparseLU/SparseLU_SupernodalMatrix.h \
    eigen/src/SparseLU/SparseLU_Utils.h \
    eigen/src/SparseLU/SparseLUImpl.h \
    eigen/src/SparseQR/SparseQR.h \
    eigen/src/SPQRSupport/SuiteSparseQRSupport.h \
    eigen/src/StlSupport/details.h \
    eigen/src/StlSupport/StdDeque.h \
    eigen/src/StlSupport/StdList.h \
    eigen/src/StlSupport/StdVector.h \
    eigen/src/SuperLUSupport/SuperLUSupport.h \
    eigen/src/SVD/JacobiSVD.h \
    eigen/src/SVD/JacobiSVD_MKL.h \
    eigen/src/SVD/UpperBidiagonalization.h \
    eigen/src/UmfPackSupport/UmfPackSupport.h \
    eigen/Array \
    eigen/Cholesky \
    eigen/CholmodSupport \
    eigen/Core \
    eigen/Dense \
    eigen/Eigen \
    eigen/Eigen2Support \
    eigen/Eigenvalues \
    eigen/Geometry \
    eigen/Householder \
    eigen/IterativeLinearSolvers \
    eigen/Jacobi \
    eigen/LeastSquares \
    eigen/LU \
    eigen/MetisSupport \
    eigen/OrderingMethods \
    eigen/PardisoSupport \
    eigen/PaStiXSupport \
    eigen/QR \
    eigen/QtAlignedMalloc \
    eigen/Sparse \
    eigen/SparseCholesky \
    eigen/SparseCore \
    eigen/SparseLU \
    eigen/SparseQR \
    eigen/SPQRSupport \
    eigen/StdDeque \
    eigen/StdList \
    eigen/StdVector \
    eigen/SuperLUSupport \
    eigen/SVD \
    eigen/UmfPackSupport \
    bitmapData.h \
    BitmapOperations.h \
    BitmapOperations.hpp \
    CziAttachment.h \
    CziAttachmentsDirectory.h \
    CziDataStructs.h \
    CziDimensionInfo.h \
    CziDisplaySettings.h \
    CziMetadata.h \
    CziMetadataDocumentInfo.h \
    CziMetadataSegment.h \
    CziParse.h \
    CZIReader.h \
    CziStructs.h \
    CziSubBlock.h \
    CziSubBlockDirectory.h \
    CziUtils.h \
    decoder.h \
    decoder_wic.h \
    ImportExport.h \
    IndexSet.h \
    libCZI.h \
    libCZI_Compositor.h \
    libCZI_DimCoordinate.h \
    libCZI_exceptions.h \
    libCZI_Helpers.h \
    libCZI_Metadata.h \
    libCZI_Pixels.h \
    libCZI_Site.h \
    libCZI_Utilities.h \
    MD5Sum.h \
    MultiChannelCompositor.h \
    priv_guiddef.h \
    pugiconfig.hpp \
    pugixml.hpp \
    SingleChannelAccessorBase.h \
    SingleChannelPyramidLevelTileAccessor.h \
    SingleChannelScalingTileAccessor.h \
    SingleChannelTileAccessor.h \
    SingleChannelTileCompositor.h \
    Site.h \
    splines.h \
    stdafx.h \
    stdAllocator.h \
    StreamImpl.h \
    targetver.h \
    utilities.h

SOURCES += \
    BitmapOperations.cpp \
    CreateBitmap.cpp \
    CziAttachment.cpp \
    CziAttachmentsDirectory.cpp \
    CziDimensionInfo.cpp \
    CziDisplaySettings.cpp \
    CziMetadata.cpp \
    CziMetadataDocumentInfo.cpp \
    CziMetadataSegment.cpp \
    CziParse.cpp \
    CZIReader.cpp \
    CziSubBlock.cpp \
    CziSubBlockDirectory.cpp \
    CziUtils.cpp \
    decoder.cpp \
    decoder_wic.cpp \
    DimCoordinate.cpp \
    dllmain.cpp \
    IndexSet.cpp \
    libCZI_Lib.cpp \
    libCZI_Site.cpp \
    libCZI_Utilities.cpp \
    MD5Sum.cpp \
    MultiChannelCompositor.cpp \
    pugixml.cpp \
    SingleChannelAccessorBase.cpp \
    SingleChannelPyramidLevelTileAccessor.cpp \
    SingleChannelScalingTileAccessor.cpp \
    SingleChannelTileAccessor.cpp \
    SingleChannelTileCompositor.cpp \
    splines.cpp \
    stdafx.cpp \
    stdAllocator.cpp \
    StreamImpl.cpp \
    utilities.cpp
