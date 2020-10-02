### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ a068133c-0439-11eb-28ea-7d74dca7262f
md"
# Multiple Dispatch

Multiple dispatch can make software:
- fast
- extensible
- programmable
- fun to play with
"

# ╔═╡ 77f7cb3a-043a-11eb-0364-af02712c0032
begin
	import Base: +
	+(x::String, y::String) = string(x, y)
end

# ╔═╡ 067aaa9a-043a-11eb-00c0-0bf5aec57f75
methods(+)

# ╔═╡ 4a2bf8d6-043a-11eb-218e-717e2842ed62
@which 3 + 3

# ╔═╡ 5a637d44-043a-11eb-2ed7-59a07cf3e49d
@which 3.0 + 3.0

# ╔═╡ 606d8b76-043a-11eb-2de0-833e57eb033c
@which 3 + 3.0

# ╔═╡ 7bc329bc-043a-11eb-11c0-bddbe839911c
"hello " + "world!"

# ╔═╡ 899128fa-043a-11eb-0972-edd7f4631c00
@which "hello"+"world!"

# ╔═╡ d21414c2-043a-11eb-170a-1dcf6f678c74
"hello"+"world"

# ╔═╡ 1741a9fe-043b-11eb-009f-c1de26f9f624
begin
	foo(x, y) = println("duck-typed foo!")
	foo(x::Int, y::Float64) = println("foo with integer, float")
	foo(x::Float64, y::Float64) = println("foo with float, float")
	foo(x::Int, y::Int) = println("foo with integer, integer")
end

# ╔═╡ 557750b6-043b-11eb-163c-a7042b905755
begin
	foo(1,1)
	foo(1.0, 1.0)
	foo(1, 1.0)
end

# ╔═╡ 86053216-043b-11eb-2d1e-8177531434ee


# ╔═╡ Cell order:
# ╟─a068133c-0439-11eb-28ea-7d74dca7262f
# ╠═067aaa9a-043a-11eb-00c0-0bf5aec57f75
# ╠═4a2bf8d6-043a-11eb-218e-717e2842ed62
# ╠═5a637d44-043a-11eb-2ed7-59a07cf3e49d
# ╠═606d8b76-043a-11eb-2de0-833e57eb033c
# ╠═7bc329bc-043a-11eb-11c0-bddbe839911c
# ╠═899128fa-043a-11eb-0972-edd7f4631c00
# ╠═77f7cb3a-043a-11eb-0364-af02712c0032
# ╠═d21414c2-043a-11eb-170a-1dcf6f678c74
# ╠═1741a9fe-043b-11eb-009f-c1de26f9f624
# ╠═557750b6-043b-11eb-163c-a7042b905755
# ╠═86053216-043b-11eb-2d1e-8177531434ee
