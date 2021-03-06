module IncrementalInference

blas_set_num_threads(2)

using
  Graphs,
  GraphViz,
  Gadfly,
  Colors,
  NLsolve,
  Distributions,
  KernelDensityEstimate,
  TransformUtils#,
  #CloudGraphs

export
  # actual CloudGraphs integration experimental code
  setCloudDataLayerAPI!,

  # using either dictionary or cloudgraphs
  VariableNodeData,
  PackedVariableNodeData,
  VNDencoder,
  VNDdecoder,
  FNDencode,
  FNDdecode,
  FunctionNodeData,
  FactorGraph,
  addNode!,
  addFactor!,
  resetData!,
  getData,
  getVarNode,
  getVal,
  setVal!,
  getBWVal,
  setBW!,
  setValKDE!,
  updateVertData!,
  BayesTree,
  EasyMessage,
  NBPMessage,
  ExploreTreeType,
  emptyFactorGraph,
  subgraphShortestPath,
  subgraphFromVerts,
  getEliminationOrder,
  prepBatchTree!,
  wipeBuildNewTree!,
  whichCliq,
  getKDE,
  getVertKDE,

  #Visualization
  investigateMultidimKDE,
  writeGraphPdf,
  ls,
  drawHorDens,
  drawHorBeliefsList,
  # vstackedDensities, # global scope naming issue with msgPlots

  # Tree stuff
  spyCliqMat,
  evalPotential,
  evalFactor2,

  # solve inference
  inferOverTree!,
  inferOverTreeR!,
    #development interface
    upMsgPassingRecursive,

  GenericMarginal,
  #Robot stuff
  PriorPose2,
  PackedPriorPose2,
  Pose2Pose2,
  PackedPose2Pose2,
  addPose2Pose2,
  Pose2DPoint2DBearingRange,
  PackedPose2DPoint2DBearingRange,
  solveLandm,
  solvePose2,
  solveSetSeps,
  addPose2Pose2!,
  uppA,
  convert, # for magic protobuf stuff
  compare,

  # Going to move to RoME.jl in future
  # For 1D example
  Odo,
  odoAdd,
  PackedOdo,
  Obsv2,
  PackedObsv2,
  Ranged,

  PriorPose3,
  Pose3Pose3,
  projectParticles,

  # dev exports
  addGraphsVert!


include("FactorGraphTypes.jl")
# include("CloudGraphIntegration.jl") # Work in progress code
include("DataLayerAPI.jl")
include("FactorGraph01.jl")
include("JunctionTree.jl")
include("GraphConstraintTypes.jl")
include("TreePotentials01.jl")
include("TreePotentials02.jl")
include("TreePotentials03.jl")
include("SolveTree01.jl")
include("SolverVisualization.jl")

end
