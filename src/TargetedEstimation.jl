module TargetedEstimation

if occursin("Intel", Sys.cpu_info()[1].model)
    using MKL
end

using DataFrames
using MLJBase
using MLJ
using CSV
using TMLE
using HighlyAdaptiveLasso
using EvoTrees
using MLJXGBoostInterface
using MLJLinearModels
using JLD2
using YAML
using CategoricalArrays
using GLMNet
using MLJModels
using Mmap

include("utils.jl")
include("estimators.jl")
include("tmle.jl")
include("sieve_variance.jl")
include("merge.jl")
include(joinpath("models", "glmnet.jl"))
include(joinpath("models", "hal.jl"))
include(joinpath("models", "grid_search_models.jl"))


export tmle_estimation, sieve_variance_plateau, merge_csv_files
export GridSearchEvoTreeRegressor, GridSearchEvoTreeClassifier
export GridSearchXGBoostRegressor, GridSearchXGBoostClassifier
export InteractionGLMNetRegressor, InteractionGLMNetClassifier
export GLMNetRegressor, GLMNetClassifier
export SNPInteractionHALClassifier, SNPInteractionHALRegressor

end
