### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 75eff55a-037d-11eb-3573-23577794cca8
md"
# Functions
"

# ╔═╡ a229b11a-037d-11eb-0104-bbb8bd6d8e7b
function f(x)
	x^2
end

# ╔═╡ a776dce2-037d-11eb-042f-8d40eeb31945
f(10)

# ╔═╡ 2b6f22ac-037e-11eb-31bf-cd03c343945d
md"
#### Different ways to define functions
"

# ╔═╡ 874a6132-037d-11eb-13cd-5de498b13bb9
function sayhi(name)
	return "Hi $name, it's nice to meet you"
end

# ╔═╡ 9c6d6258-037d-11eb-1212-6f93cd857398
sayhi("Charlie")

# ╔═╡ fcdc68d2-037d-11eb-00c4-5f35339b1e52
sayhitwo(name) = "Hi $name, it's nice to meet you"

# ╔═╡ 0807891e-037e-11eb-1e63-c7f883d36b17
sayhitwo("Charlie")

# ╔═╡ 0bad64bc-037e-11eb-05b2-23ae4b70ed8a
sayhithree = name -> "Hi $name, it's nice to meet you"

# ╔═╡ 1b38fa68-037e-11eb-1afc-5ffe837f49b5
sayhithree("Charlie")

# ╔═╡ 72eb048e-037e-11eb-235f-6936034c9ef2
md"
#### Mutating vs. Non-mutating functions

Functions followed by `!` alter their contents and functions without, do not

For example `sort` and `sort!`
"

# ╔═╡ 9c7f1876-037e-11eb-2050-3f4a18e2066a
v = [3,5,2]

# ╔═╡ a25b3838-037e-11eb-26ba-c325ab81dea8
sort(v)

# ╔═╡ a7561da0-037e-11eb-27fc-35b8af4d5b5e
v

# ╔═╡ aad0f782-037e-11eb-16ad-5b2f32109de8
sort!(v)

# ╔═╡ af3b0f1a-037e-11eb-2fb6-2913e169389f
v

# ╔═╡ 00a0f1ee-037f-11eb-2255-075c734d72ff
md"
#### Broadcasting

Denoted with a `.` between any function name and its argument list

Passing an array to a function `f()` will take that array as a single input

Passing an array to a function `f.()` will treat each element of the array as an input
"

# ╔═╡ 25154a52-037f-11eb-2a91-8fc04cc62f3a
A = [i + 3*j for j in 0:2, i in 1:3]

# ╔═╡ 79d96eba-037f-11eb-0ee5-b3a2893d184c
f(A)

# ╔═╡ b2e95d28-037f-11eb-388e-8b06168bb551
md"
`f(A) = A^2 = A * A`
"

# ╔═╡ c0ae07ba-037f-11eb-0bfc-c912c671761e
f.(A)

# ╔═╡ c491a60c-037f-11eb-39f1-2f2746a1ec60
md"
`f.(A)` will return a matrix that holds the square of A[i,j] at position [i,j]
"

# ╔═╡ f060b17e-037f-11eb-07ea-45946df64c95
A[2,2]

# ╔═╡ f7bd1e4e-037f-11eb-3dd5-23b06c6927e1
f.(v)

# ╔═╡ Cell order:
# ╟─75eff55a-037d-11eb-3573-23577794cca8
# ╠═a229b11a-037d-11eb-0104-bbb8bd6d8e7b
# ╠═a776dce2-037d-11eb-042f-8d40eeb31945
# ╟─2b6f22ac-037e-11eb-31bf-cd03c343945d
# ╠═874a6132-037d-11eb-13cd-5de498b13bb9
# ╠═9c6d6258-037d-11eb-1212-6f93cd857398
# ╠═fcdc68d2-037d-11eb-00c4-5f35339b1e52
# ╠═0807891e-037e-11eb-1e63-c7f883d36b17
# ╠═0bad64bc-037e-11eb-05b2-23ae4b70ed8a
# ╠═1b38fa68-037e-11eb-1afc-5ffe837f49b5
# ╟─72eb048e-037e-11eb-235f-6936034c9ef2
# ╠═9c7f1876-037e-11eb-2050-3f4a18e2066a
# ╠═a25b3838-037e-11eb-26ba-c325ab81dea8
# ╠═a7561da0-037e-11eb-27fc-35b8af4d5b5e
# ╠═aad0f782-037e-11eb-16ad-5b2f32109de8
# ╠═af3b0f1a-037e-11eb-2fb6-2913e169389f
# ╠═00a0f1ee-037f-11eb-2255-075c734d72ff
# ╠═25154a52-037f-11eb-2a91-8fc04cc62f3a
# ╠═79d96eba-037f-11eb-0ee5-b3a2893d184c
# ╠═b2e95d28-037f-11eb-388e-8b06168bb551
# ╠═c0ae07ba-037f-11eb-0bfc-c912c671761e
# ╟─c491a60c-037f-11eb-39f1-2f2746a1ec60
# ╠═f060b17e-037f-11eb-07ea-45946df64c95
# ╠═f7bd1e4e-037f-11eb-3dd5-23b06c6927e1
