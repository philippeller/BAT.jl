# This file is a part of BAT.jl, licensed under the MIT License (MIT).

"""
    struct VEGASIntegration <: IntegrationAlgorithm

VEGASIntegration integration algorithm.

Constructors:

* ```$(FUNCTIONNAME)(; fields...)```

Fields:

$(TYPEDFIELDS)

!!! note

    This functionality is only available when the
    [Cuba](https://github.com/giordano/Cuba.jl) package is loaded (e.g. via
    `import CUBA`).
"""
@with_kw struct VEGASIntegration{TR<:AbstractTransformTarget} <: IntegrationAlgorithm
    pretransform::TR = PriorToUniform()
    rtol::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:RTOL))
    atol::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:ATOL))
    minevals::Int = ext_default(pkgext(Val(:Cuba)), Val(:MINEVALS))
    maxevals::Int = ext_default(pkgext(Val(:Cuba)), Val(:MAXEVALS))
    nstart::Int = ext_default(pkgext(Val(:Cuba)), Val(:NSTART))
    nincrease::Int = ext_default(pkgext(Val(:Cuba)), Val(:NINCREASE))
    nbatch::Int = ext_default(pkgext(Val(:Cuba)), Val(:NBATCH))
    nthreads::Int = Base.Threads.nthreads()
    strict::Bool = true
end
export VEGASIntegration



"""
    struct SuaveIntegration <: IntegrationAlgorithm

SuaveIntegration integration algorithm.

Constructors:

* ```$(FUNCTIONNAME)(; fields...)```

Fields:

$(TYPEDFIELDS)

!!! note

    This functionality is only available when the
    [Cuba](https://github.com/giordano/Cuba.jl) package is loaded (e.g. via
    `import CUBA`).
"""
@with_kw struct SuaveIntegration{TR<:AbstractTransformTarget} <: IntegrationAlgorithm
    pretransform::TR = PriorToUniform()
    rtol::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:RTOL))
    atol::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:ATOL))
    minevals::Int = ext_default(pkgext(Val(:Cuba)), Val(:MINEVALS))
    maxevals::Int = ext_default(pkgext(Val(:Cuba)), Val(:MAXEVALS))
    nnew::Int = ext_default(pkgext(Val(:Cuba)), Val(:NNEW))
    nmin::Int = ext_default(pkgext(Val(:Cuba)), Val(:NMIN))
    flatness::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:FLATNESS))
    nthreads::Int = Base.Threads.nthreads()
    strict::Bool = true
end
export SuaveIntegration



"""
    struct DivonneIntegration <: IntegrationAlgorithm

DivonneIntegration integration algorithm.

Constructors:

* ```$(FUNCTIONNAME)(; fields...)```

Fields:

$(TYPEDFIELDS)

!!! note

    This functionality is only available when the
    [Cuba](https://github.com/giordano/Cuba.jl) package is loaded (e.g. via
    `import CUBA`).
"""
@with_kw struct DivonneIntegration{TR<:AbstractTransformTarget} <: IntegrationAlgorithm
    pretransform::TR = PriorToUniform()
    rtol::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:RTOL))
    atol::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:ATOL))
    minevals::Int = ext_default(pkgext(Val(:Cuba)), Val(:MINEVALS))
    maxevals::Int = ext_default(pkgext(Val(:Cuba)), Val(:MAXEVALS))
    key1::Int = ext_default(pkgext(Val(:Cuba)), Val(:KEY1))
    key2::Int = ext_default(pkgext(Val(:Cuba)), Val(:KEY2))
    key3::Int = ext_default(pkgext(Val(:Cuba)), Val(:KEY3))
    maxpass::Int = ext_default(pkgext(Val(:Cuba)), Val(:MAXPASS))
    border::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:BORDER))
    maxchisq::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:MAXCHISQ))
    mindeviation::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:MINDEVIATION))
    ngiven::Int = ext_default(pkgext(Val(:Cuba)), Val(:NGIVEN))
    ldxgiven::Int = ext_default(pkgext(Val(:Cuba)), Val(:LDXGIVEN))
    nextra::Int = ext_default(pkgext(Val(:Cuba)), Val(:NEXTRA))
    nthreads::Int = Base.Threads.nthreads()
    strict::Bool = true
end
export DivonneIntegration


"""
    struct CuhreIntegration <: IntegrationAlgorithm

CuhreIntegration integration algorithm.

Constructors:

* ```$(FUNCTIONNAME)(; fields...)```

Fields:

$(TYPEDFIELDS)

!!! note

    This functionality is only available when the
    [Cuba](https://github.com/giordano/Cuba.jl) package is loaded (e.g. via
    `import CUBA`).
"""
@with_kw struct CuhreIntegration{TR<:AbstractTransformTarget} <: IntegrationAlgorithm
    pretransform::TR = PriorToUniform()
    rtol::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:RTOL))
    atol::Float64 = ext_default(pkgext(Val(:Cuba)), Val(:ATOL))
    minevals::Int = ext_default(pkgext(Val(:Cuba)), Val(:MINEVALS))
    maxevals::Int = ext_default(pkgext(Val(:Cuba)), Val(:MAXEVALS))
    key::Int = ext_default(pkgext(Val(:Cuba)), Val(:KEY))
    nthreads::Int = Base.Threads.nthreads()
    strict::Bool = true
end
export CuhreIntegration


const CubaIntegration = Union{VEGASIntegration, SuaveIntegration, DivonneIntegration, CuhreIntegration}
