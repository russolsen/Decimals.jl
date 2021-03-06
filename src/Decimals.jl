# Pure Julia decimal arithmetic
# @license MIT
# @author jack@tinybike.net (Jack Peterson), 7/3/2014

module Decimals

    import Core: ===
    import Base: string, float, ==, +, -, *, /, .*, ./, is

    export Decimal,
           decimal,
           string,
           float,
           number,
           norm,
           round,
           isequal,
           is,
           isint,
           inv,
           +,
           -,
           *,
           /,
           ==

    DIGITS = 20

    # Numerical value: (-1)^s * c * 10^q
    immutable Decimal
        s::Integer  # sign can be 0 (+) or 1 (-)
        c::BigInt   # coefficient (significand)
        q::Integer  # exponent
    end

    Decinum = Union{Decimal, Number}

    # Convert between Decimal objects, numbers, and strings
    include("decimal.jl")

    # Decimal normalization
    include("norm.jl")

    # Addition, subtraction, negation, multiplication
    include("arithmetic.jl")

    # Equality
    include("equals.jl")

    # Rounding
    include("round.jl")

end
