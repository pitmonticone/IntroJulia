### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ c35189d5-fbe8-4637-b004-2d15b7399af5
using PlutoUI

# ╔═╡ 03065b03-74c2-404f-83d1-103c1fcd9a4b
TableOfContents()

# ╔═╡ 69f4feb4-a170-4a79-a316-8697021770c9
md"""
# Introduction to Julia
"""

# ╔═╡ 7c628ff7-ebfb-420d-a1ee-96214f093630
md"""
*By [Guillaume Dalle](https://gdalle.github.io)*
"""

# ╔═╡ d8fd4350-e70c-42ae-aaf1-80459e7790b7
md"""
## Overview
"""

# ╔═╡ 7a69d685-dbb7-4387-a7b8-68c6527bfa3a
md"""
This website is an introduction to the Julia programming language. It was originally designed as teaching material for students of École des Ponts, but it is accessible to a much wider audience.

All the links below point to notebooks that can be visualized in your browser without any prerequisites. To edit or run a notebook, click on `Edit or run this notebook` and follow the instructions given there. You will need to [install Julia](https://julialang.org/downloads/) and the [Pluto package](https://github.com/fonsp/Pluto.jl).

While these notebooks are great for interactive exploration of short code snippets, they have serious downsides when it comes to larger tasks. We strongly advise you to choose another tool for more ambitious projects, ideally an IDE such as VSCode (more on this below).
"""

# ╔═╡ 813cd7f7-85e1-4cdf-bde3-af259d9aa429
md"""
### Available notebooks

1. General stuff
- [Basics of Julia](basics.html)
- [Writing efficient code](efficiency.html)

2. Optimization
- [Graph theory](graphs.html)
- [Polyhedra](polyhedra.html)
- [Linear Programming](jump.html)
- [Branch & Bound](branch_bound.html)
"""

# ╔═╡ 79c1ea6e-112c-47e2-a676-437f24298664
md"""
## The basics
"""

# ╔═╡ 2ffec8d3-6168-4261-8846-e8269125077d
md"""
### What is Julia?

Maybe the solution to the two-language problem (see this [Nature article](https://www.nature.com/articles/d41586-019-02310-3)):

- User-friendly syntax for high-level programming
- C-level speed (when done right) for high-performance computing
"""

# ╔═╡ a5430a82-913f-439b-966d-73bad7f17283
md"""
### Installing Julia

To install the latest version of Julia, follow the [platform-specific instructions](https://julialang.org/downloads/platform/). If you need multiple versions of Julia to coexist on your system, or if you don't want to bother with manual updates, take a look at [jill](https://github.com/abelsiqueira/jill) or [jill.py](https://github.com/johnnychen94/jill.py).
"""

# ╔═╡ 7183b4db-8779-4750-bb96-433414774c5d
md"""
### Learning Julia

The Julia website has a great list of [resources for beginners](https://julialang.org/learning/), as well as many free [tutorials](https://juliaacademy.com/) contributed by the community. The MIT course [Introduction to Computational Thinking](https://computationalthinking.mit.edu/Spring21/) is also very beginner-friendly.

If you just need a quick refresher about syntax, this [cheat sheet](https://juliadocs.github.io/Julia-Cheat-Sheet/) is the place to go. For more involved questions, the primary source of knowledge is the [Julia manual](https://docs.julialang.org/en/v1/).

If you want to go further, here is a list of quality books and tutorials:

- [Introducing Julia](https://en.wikibooks.org/wiki/Introducing_Julia)
- [ThinkJulia](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html)
- [From Zero to Julia](https://techytok.com/from-zero-to-julia/)
- [IntroToJulia](https://ucidatascienceinitiative.github.io/IntroToJulia/)

And for the ultimate list of Julia resources, go to [Julia.jl](https://svaksha.github.io/Julia.jl/).
"""

# ╔═╡ 50d7a8f0-afe5-4f34-b48b-7f95f56a61e7
md"""
### Coding environment

When developing in Julia, you want to select a comfortable [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment). Here are a few good choices:

- [VSCode](https://code.visualstudio.com/) with the [Julia for VSCode extension](https://www.julia-vscode.org/)
- [Atom](https://atom.io/) with the [Juno package](https://junolab.org/)
- Any other IDE with the relevant [Julia support](https://github.com/JuliaEditorSupport)

If you want something a bit lighter, here are two browser-based options:
- [Jupyter Lab](http://jupyterlab.io) is a browser-based IDE and notebook for Julia, Python and R
- [Pluto](https://github.com/fonsp/Pluto.jl) is a Julia-based reactive notebook server
"""

# ╔═╡ 81191fe3-039e-4e0a-a551-79751f1894eb
md"""
### Getting help

The Julia [community](https://julialang.org/community/) is very active and welcoming, so don't hesitate to ask for help in the following venues:

- a quick Google search
- a specific package's GitHub repository, which includes documentation (often signalled by a ![](https://img.shields.io/badge/docs-stable-blue.svg) badge) and issues
- the [Julia discourse forum](https://discourse.julialang.org/)
- the [Julia Slack](https://julialang.org/slack/)
- the [Humans of Julia Discord](https://discord.gg/mm2kYjB)
"""

# ╔═╡ 2311a578-c36b-4327-917a-dbe231e85b32
md"""
## Creating a package
"""

# ╔═╡ b39a7884-13ff-41c6-ac18-b5a91d8510cb
md"""
### Discovering packages

Before coding something, you want to make sure that someone else hasn't already coded it better and faster than you. For that, you may need to search for packages on a dedicated database: that's what [JuliaObserver](https://juliaobserver.com/) and [JuliaHub](https://juliahub.com/ui/Home) are here for.

In addition, Julia packages are often gathered into GitHub "groups" or organizations, which are listed [here](https://julialang.org/community/organizations/).

If a Julia package doesn't exist:

- Look for it in C and use the [built-in C callers](https://docs.julialang.org/en/v1/manual/calling-c-and-fortran-code/)
- Look for it in Python and use [PyCall.jl](https://github.com/JuliaPy/PyCall.jl), or better yet [PythonCall.jl](https://github.com/cjdoris/PythonCall.jl)
- (you get the idea)

...or code / wrap it yourself in Julia and contribute to the community!
"""

# ╔═╡ 672ad497-a309-4a56-959e-ba6a5af1dc80
md"""
### Package manager

One of the main assets of Julia is a built-in package manager called `Pkg`, which handles installation and updates of every library you may need. `Pkg` also makes it possible to create separate environments for each one of your projects. The [full documentation](https://pkgdocs.julialang.org/v1/) of this utility is a must-read.
"""

# ╔═╡ b653e7a8-8c25-45c8-81c6-5b891af955d3
md"""
### Getting started

The [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl) package enables you to create packages in a standardized way. It takes care of the file structure for you, and even integerates with GitHub Actions or Travis CI to set up a continuous integration workflow.

"""

# ╔═╡ fa4decaa-e06d-413c-aa59-1cec097cdac7
md"""
### Workflow

Some workflow tips can be found [in the manual](https://docs.julialang.org/en/v1/manual/workflow-tips/). In particular, you should check out the following packages:

- [JuliaFormatter.jl](https://github.com/domluna/JuliaFormatter.jl) and its [VSCode extension](https://marketplace.visualstudio.com/items?itemName=singularitti.vscode-julia-formatter): format source code
- [Revise.jl](https://github.com/timholy/Revise.jl): incorporate changes without restarting the REPL
- [Debugger.jl](https://github.com/JuliaDebug/Debugger.jl): dynamically debug source code (much easier to use from within VSCode)
- [JET.jl](https://github.com/aviatesk/JET.jl): statically debug source code
"""

# ╔═╡ 952e1ffe-a1e1-497e-96d9-76e2251e5b27
md"""
### Style

Julia has no universally agreed-upon style guide like Python. The main official guidelines can be found [here](https://docs.julialang.org/en/v1/manual/style-guide/).

For an exhaustive style reference, have a look at the unofficial (but widely used) [BlueStyle](https://github.com/invenia/BlueStyle) by Invenia.
"""

# ╔═╡ c8a6e3e8-f951-4b26-92b4-195176518b7c
md"""
### Unit testing

Julia has built-in support for [unit testing](https://docs.julialang.org/en/v1/stdlib/Test/). This allows you to check that recent modifications did not modify the expected behavior of your code.
"""

# ╔═╡ c80724f4-9201-4f8f-b749-d10e123d1e52
md"""
### Documentation

Non-documented code is useless code. You should write documentation as you code (not after), and the best place to put it is in your `.jl` files using docstrings. Julia docstrings are written in Markdown, see [this reference](https://docs.julialang.org/en/v1/manual/documentation/) for general guidelines.

If you want to automatically generate a nice HTML documentation website, harnessing the power of
[Documenter.jl](https://github.com/JuliaDocs/Documenter.jl) is the way to go.
This pakcage also enables testing from within the documentation itself. Inside a docstring, you can put examples of REPL input and expected output, which will be run again and checked for correctness every time the documentation is updated. These code examples are called doctests.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.32"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "0b5cfbb704034b5b4c1869e36634438a047df065"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "ae6145ca68947569058866e443df69587acc1806"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.32"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╠═c35189d5-fbe8-4637-b004-2d15b7399af5
# ╠═03065b03-74c2-404f-83d1-103c1fcd9a4b
# ╟─69f4feb4-a170-4a79-a316-8697021770c9
# ╟─7c628ff7-ebfb-420d-a1ee-96214f093630
# ╟─d8fd4350-e70c-42ae-aaf1-80459e7790b7
# ╟─7a69d685-dbb7-4387-a7b8-68c6527bfa3a
# ╟─813cd7f7-85e1-4cdf-bde3-af259d9aa429
# ╟─79c1ea6e-112c-47e2-a676-437f24298664
# ╟─2ffec8d3-6168-4261-8846-e8269125077d
# ╟─a5430a82-913f-439b-966d-73bad7f17283
# ╟─7183b4db-8779-4750-bb96-433414774c5d
# ╟─50d7a8f0-afe5-4f34-b48b-7f95f56a61e7
# ╟─81191fe3-039e-4e0a-a551-79751f1894eb
# ╟─2311a578-c36b-4327-917a-dbe231e85b32
# ╟─b39a7884-13ff-41c6-ac18-b5a91d8510cb
# ╟─672ad497-a309-4a56-959e-ba6a5af1dc80
# ╟─b653e7a8-8c25-45c8-81c6-5b891af955d3
# ╟─fa4decaa-e06d-413c-aa59-1cec097cdac7
# ╟─952e1ffe-a1e1-497e-96d9-76e2251e5b27
# ╟─c8a6e3e8-f951-4b26-92b4-195176518b7c
# ╟─c80724f4-9201-4f8f-b749-d10e123d1e52
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002