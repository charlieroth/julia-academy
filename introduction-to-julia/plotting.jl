### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 231db2fa-042e-11eb-3acc-8368c87fb48a
begin
	import Pkg
	Pkg.add("Plots")
	using Plots
end

# ╔═╡ 076940ee-042e-11eb-13bd-db09b0f5d526
md"
# Plotting
"

# ╔═╡ 76de4eee-042e-11eb-01d8-fd2f3c18927c
x = -3:0.1:3

# ╔═╡ 8f5888de-042e-11eb-222b-c76d2701761d
f(x) = x^2

# ╔═╡ 98159048-042e-11eb-1d04-a542824866d6
y = f.(x) # broadbast function to all elements of x

# ╔═╡ d36a1042-042e-11eb-2173-5fc415278c02
gr()

# ╔═╡ d7b39bd2-042e-11eb-1df9-05e286221f79
plot(x, y, label="line")

# ╔═╡ e938ec4c-042e-11eb-3869-bd8893f0551b
scatter!(x, y, label="points")

# ╔═╡ a8fd7e56-042f-11eb-271a-e530c6cca1c7
global_temps = [14.4, 14.5, 14.8, 15.2, 15.5, 15.8]

# ╔═╡ b7fc50e4-042f-11eb-3d55-170c9a9a0886
numpirates = [45000, 20000, 15000, 5000, 400, 17]

# ╔═╡ f9598188-042f-11eb-1e54-330c288b89c3
begin
	plot(numpirates, global_temps, legend=false)
	scatter!(numpirates, global_temps, legend=false)
	xflip!()
	xlabel!("Number of Pirates [Approximate]")
	ylabel!("Global Tempature (C)")
	title!("Influence of pirate population on global warning")
end

# ╔═╡ b03d5b2e-0438-11eb-335b-cff000f85eec
begin
	p1 = plot(x, x)
	p2 = plot(x, x.^2)
	p3 = plot(x, x.^3)
	p4 = plot(x, x.^4)
	plot(p1, p2, p3, p4, layout=(2,2), legend=false)
end

# ╔═╡ Cell order:
# ╟─076940ee-042e-11eb-13bd-db09b0f5d526
# ╠═231db2fa-042e-11eb-3acc-8368c87fb48a
# ╠═76de4eee-042e-11eb-01d8-fd2f3c18927c
# ╠═8f5888de-042e-11eb-222b-c76d2701761d
# ╠═98159048-042e-11eb-1d04-a542824866d6
# ╠═d36a1042-042e-11eb-2173-5fc415278c02
# ╠═d7b39bd2-042e-11eb-1df9-05e286221f79
# ╠═e938ec4c-042e-11eb-3869-bd8893f0551b
# ╠═a8fd7e56-042f-11eb-271a-e530c6cca1c7
# ╠═b7fc50e4-042f-11eb-3d55-170c9a9a0886
# ╠═f9598188-042f-11eb-1e54-330c288b89c3
# ╠═b03d5b2e-0438-11eb-335b-cff000f85eec
