### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 31da9246-001c-11eb-339e-a7d114554c5c
md"
# Data Structures
"

# ╔═╡ d5cba43a-0376-11eb-25bb-ed842de865b4
md"
### Dictionaries
"

# ╔═╡ e1c2b396-0376-11eb-0288-81bb4e22d5b7
phonebook = Dict("Charlie" => "7346739162", "Miranda" => "7347769792")

# ╔═╡ 12b2ed22-0377-11eb-0597-c31d7d68a37c
phonebook["Miranda"] = "1234567890"

# ╔═╡ 27eea6c2-0377-11eb-0b33-0100d3a60cac
phonebook

# ╔═╡ 3ce2905c-0377-11eb-1b81-cbe1ac729696
begin
	pop!(phonebook, "Charlie")
	phonebook
end

# ╔═╡ e25aee42-0376-11eb-2647-1da42cdb367e
md"
### Tuples
"

# ╔═╡ e9c71ab4-0376-11eb-1801-7ff9bc75cbc4
fav_animals = ("girrafe", "corgi")

# ╔═╡ ee2af984-0378-11eb-2b7b-97eec87228d3
fav_animals[1]

# ╔═╡ f38ad4e4-0378-11eb-219b-1b71e183e6bc
begin
	fav_animals[1] = "otter"
	fav_animals
end

# ╔═╡ ea4f8246-0376-11eb-3b3f-65b9c6786248
md"
### Arrays
"

# ╔═╡ f5a5f2a6-0376-11eb-008e-0dab95eb078e
friends = ["Miranda", "Parker"]

# ╔═╡ 25573df0-0379-11eb-0666-271736709778
fibonacci = [1, 1, 2, 3, 5, 8, 13]

# ╔═╡ 3b975474-0379-11eb-01bd-ad662b02a2a4
mixed = ["Charlie", "Roth", 24, 6.2]

# ╔═╡ 4a7ba1c0-0379-11eb-0f4d-effe9ee53745
mixed[3] = 25

# ╔═╡ 55881c42-0379-11eb-1fff-51abbd3e64b6
mixed

# ╔═╡ 5bc23322-0379-11eb-1f4d-3d81c0c33508
begin
	push!(fibonacci, 21)
	fibonacci
end

# ╔═╡ 817233b0-0379-11eb-3f9b-7fbcdf0df785
nums = [[1,2,3], [4,5], [6,7,8]]

# ╔═╡ 8f356f30-0379-11eb-2227-ad78d2bd9ddc
rand(4,3)

# ╔═╡ 9c6dfb52-0379-11eb-2556-852e10a9212a
rand(4,3,2)

# ╔═╡ c0731d5e-0379-11eb-1726-bdc6b7c42eb8


# ╔═╡ Cell order:
# ╟─31da9246-001c-11eb-339e-a7d114554c5c
# ╟─d5cba43a-0376-11eb-25bb-ed842de865b4
# ╠═e1c2b396-0376-11eb-0288-81bb4e22d5b7
# ╠═12b2ed22-0377-11eb-0597-c31d7d68a37c
# ╠═27eea6c2-0377-11eb-0b33-0100d3a60cac
# ╠═3ce2905c-0377-11eb-1b81-cbe1ac729696
# ╟─e25aee42-0376-11eb-2647-1da42cdb367e
# ╠═e9c71ab4-0376-11eb-1801-7ff9bc75cbc4
# ╠═ee2af984-0378-11eb-2b7b-97eec87228d3
# ╠═f38ad4e4-0378-11eb-219b-1b71e183e6bc
# ╟─ea4f8246-0376-11eb-3b3f-65b9c6786248
# ╠═f5a5f2a6-0376-11eb-008e-0dab95eb078e
# ╠═25573df0-0379-11eb-0666-271736709778
# ╠═3b975474-0379-11eb-01bd-ad662b02a2a4
# ╠═4a7ba1c0-0379-11eb-0f4d-effe9ee53745
# ╠═55881c42-0379-11eb-1fff-51abbd3e64b6
# ╠═5bc23322-0379-11eb-1f4d-3d81c0c33508
# ╠═817233b0-0379-11eb-3f9b-7fbcdf0df785
# ╠═8f356f30-0379-11eb-2227-ad78d2bd9ddc
# ╠═9c6dfb52-0379-11eb-2556-852e10a9212a
# ╠═c0731d5e-0379-11eb-1726-bdc6b7c42eb8
