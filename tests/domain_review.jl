include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(77, 35, 18, 63)
@assert score(item) == 198
@assert lane(item) == "ship"
