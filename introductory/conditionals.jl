### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ b935b2c4-037c-11eb-0e21-c5ec8dee8867
md"
# Conditionals
"

# ╔═╡ cc9c9dfa-037c-11eb-26d0-c74a6499305f
begin
	x = 3
	y = 90
end

# ╔═╡ ff8aa688-037c-11eb-22fb-81f3cf6869ca
begin
	if x > y
		"$x is larger than $y"
	elseif x == y
		"$x is equal to $y"
	else
		"$x is less than $y"
	end
end

# ╔═╡ 6bec70a8-037d-11eb-3194-5b1ee2f128db
md"
### Ternary Operator
"

# ╔═╡ 312f9a88-037d-11eb-2670-a13cface9551
(x > y) ? x : y

# ╔═╡ 473e2892-037d-11eb-1a74-0bead2476d7d
(x > y) && "$x is larger than $y"

# ╔═╡ Cell order:
# ╟─b935b2c4-037c-11eb-0e21-c5ec8dee8867
# ╠═cc9c9dfa-037c-11eb-26d0-c74a6499305f
# ╠═ff8aa688-037c-11eb-22fb-81f3cf6869ca
# ╟─6bec70a8-037d-11eb-3194-5b1ee2f128db
# ╠═312f9a88-037d-11eb-2670-a13cface9551
# ╠═473e2892-037d-11eb-1a74-0bead2476d7d
