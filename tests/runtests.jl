include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(83, 92, 16, 22, 4)
@assert score(signal_case_1) == 92
@assert classify(signal_case_1) == "review"
signal_case_2 = Signal(97, 103, 8, 9, 10)
@assert score(signal_case_2) == 268
@assert classify(signal_case_2) == "accept"
signal_case_3 = Signal(84, 89, 14, 6, 8)
@assert score(signal_case_3) == 227
@assert classify(signal_case_3) == "accept"
