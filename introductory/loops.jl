### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ fcd2b2f8-001f-11eb-1c1c-095e59984e23
md"
# Loops
"

# ╔═╡ 1fa1eb82-037a-11eb-2426-fdd0bfd278f4
md"
 ### while loop
"

# ╔═╡ 70c3b176-037a-11eb-3c6d-2119f47b4ab7
function while_loop_print(limit)
	i = 1
	while i <= limit
		println("while loop: ", i)
		i = i + 1
	end
end

# ╔═╡ 9bb219b2-037a-11eb-297b-49157f320cd9
while_loop_print(10)

# ╔═╡ ea7f8df2-037a-11eb-2c17-dd59b3fb69c7
md"
### for loop
"

# ╔═╡ aec3e916-037a-11eb-3f8d-57b33853471a
function for_loop_print(limit)
	for i = 1:limit
		println("for loop: ", i)
	end
end

# ╔═╡ 08d9cace-037b-11eb-29cd-9b88aba7caee
function for_loop_print2(limit)
	for i ∈ 1:limit # can use the \in operator as well
		println("for loop 2: ", i)
	end
end

# ╔═╡ bef09c08-037a-11eb-162c-97d057f02892
for_loop_print(10)

# ╔═╡ 2c29fa8a-037b-11eb-071e-19ecbd41e827
for_loop_print2(10)

# ╔═╡ 4eb7f5f2-037b-11eb-1b2f-0bea34a441fe
m, n = 5, 5

# ╔═╡ 5645bc82-037b-11eb-0572-17b5cef85b39
A = zeros(m, n)

# ╔═╡ 5b66d31a-037b-11eb-1a4d-8193d8883597
function populate_addition_table_two_loops(table)
	for i ∈ 1:m
		for j ∈ 1:n
			table[i,j] = i + j
		end
	end
	
	return table
end

# ╔═╡ 7a4332ac-037b-11eb-2dd5-557f4c1fb7d4
populate_addition_table_two_loops(A)

# ╔═╡ c36a639c-037b-11eb-38cb-4d7dcbf79862
B = zeros(m, n)

# ╔═╡ a2daa238-037b-11eb-3d7c-fd76d1d24239
function populate_addition_table_one_loop(table)
	for i ∈ 1:m, j ∈ 1:n
		table[i, j] = i + j
	end
	return table
end

# ╔═╡ d2cb774a-037b-11eb-2702-e15024dc7631
populate_addition_table_one_loop(B)

# ╔═╡ 27bf0098-037c-11eb-3557-19f4f227b443
md"
The 'Julia' way to create this addition table would be to use an array comprehension
"

# ╔═╡ 57994846-037c-11eb-01b6-93ab54dac106
C = [i + j for i in 1:m, j in 1:n]

# ╔═╡ 71cceee8-037c-11eb-2101-712bae5ba07c
for x in 1:10
	D = [i + j for i in 1:x, j in 1:x]
	display(D)
end

# ╔═╡ Cell order:
# ╟─fcd2b2f8-001f-11eb-1c1c-095e59984e23
# ╟─1fa1eb82-037a-11eb-2426-fdd0bfd278f4
# ╠═70c3b176-037a-11eb-3c6d-2119f47b4ab7
# ╠═9bb219b2-037a-11eb-297b-49157f320cd9
# ╟─ea7f8df2-037a-11eb-2c17-dd59b3fb69c7
# ╠═aec3e916-037a-11eb-3f8d-57b33853471a
# ╠═08d9cace-037b-11eb-29cd-9b88aba7caee
# ╠═bef09c08-037a-11eb-162c-97d057f02892
# ╠═2c29fa8a-037b-11eb-071e-19ecbd41e827
# ╠═4eb7f5f2-037b-11eb-1b2f-0bea34a441fe
# ╠═5645bc82-037b-11eb-0572-17b5cef85b39
# ╠═5b66d31a-037b-11eb-1a4d-8193d8883597
# ╠═7a4332ac-037b-11eb-2dd5-557f4c1fb7d4
# ╠═c36a639c-037b-11eb-38cb-4d7dcbf79862
# ╠═a2daa238-037b-11eb-3d7c-fd76d1d24239
# ╠═d2cb774a-037b-11eb-2702-e15024dc7631
# ╟─27bf0098-037c-11eb-3557-19f4f227b443
# ╠═57994846-037c-11eb-01b6-93ab54dac106
# ╠═71cceee8-037c-11eb-2101-712bae5ba07c
