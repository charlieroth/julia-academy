### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ cec665ee-0380-11eb-2046-094816eb38ad
begin
	using Colors
end

# ╔═╡ 137e25ce-0380-11eb-17ef-cd78df414399
md"
# Packages
"

# ╔═╡ 2d048594-0380-11eb-2070-e94273040416
md"
To install a package, `import Pkg` and use the `Pkg.add()` function
"

# ╔═╡ bc7aa4d6-0380-11eb-2870-6111339a7d55
begin
	import Pkg
	Pkg.add("Colors")
end

# ╔═╡ b708b31c-0380-11eb-0903-af609fc79b8a
md"
To load a package you use the `using` keyword
"

# ╔═╡ 0efcbe0e-0381-11eb-107d-df556b7af478
palette = distinguishable_colors(4)

# ╔═╡ 2fc47f8e-0381-11eb-3a2e-732d1c216f2d
rand(palette, 3, 3)

# ╔═╡ Cell order:
# ╟─137e25ce-0380-11eb-17ef-cd78df414399
# ╟─2d048594-0380-11eb-2070-e94273040416
# ╠═bc7aa4d6-0380-11eb-2870-6111339a7d55
# ╟─b708b31c-0380-11eb-0903-af609fc79b8a
# ╠═cec665ee-0380-11eb-2046-094816eb38ad
# ╠═0efcbe0e-0381-11eb-107d-df556b7af478
# ╠═2fc47f8e-0381-11eb-3a2e-732d1c216f2d
