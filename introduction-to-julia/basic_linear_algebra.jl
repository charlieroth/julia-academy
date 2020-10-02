### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ ca69dd08-0440-11eb-19b1-2fe9a5222e9d
A = rand(1:4,3,3)

# ╔═╡ e613174a-0440-11eb-0958-fd7ae1e85cc7
x = ones(3)

# ╔═╡ 286e673e-0441-11eb-0d3a-0d2c44f8afff
b = A*x

# ╔═╡ 3165064a-0441-11eb-360e-d1cd66bc4cb5
md"
#### Transposition

`A'` is the conjugate tranpose whereas `A.'` is just the transpose
"

# ╔═╡ 444307c6-0441-11eb-0d02-c1fd72ea6220
Asym = A + A'

# ╔═╡ 7a63cfc0-0441-11eb-023a-6d807e8c62ee
Apd = A'A

# ╔═╡ 80ea94c8-0441-11eb-3889-ebd4caabe56c
md"
#### Solving linear systems

The problem `Ax=b` for a square A is solve by the `\` function
"

# ╔═╡ a694895e-0441-11eb-04bb-b7e5efc02ea1
A\b

# ╔═╡ b1dbbd1e-0441-11eb-3c2a-33fa223f3d0b


# ╔═╡ Cell order:
# ╠═ca69dd08-0440-11eb-19b1-2fe9a5222e9d
# ╠═e613174a-0440-11eb-0958-fd7ae1e85cc7
# ╠═286e673e-0441-11eb-0d3a-0d2c44f8afff
# ╟─3165064a-0441-11eb-360e-d1cd66bc4cb5
# ╠═444307c6-0441-11eb-0d02-c1fd72ea6220
# ╠═7a63cfc0-0441-11eb-023a-6d807e8c62ee
# ╟─80ea94c8-0441-11eb-3889-ebd4caabe56c
# ╠═a694895e-0441-11eb-04bb-b7e5efc02ea1
# ╠═b1dbbd1e-0441-11eb-3c2a-33fa223f3d0b
