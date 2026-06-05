dims_sq_in = 22.5 * 80 * 10
dims_sq_ft = dims_sq_in / 12**2
print(dims_sq_ft)                           # 125 sq ft     area to cover


pkg_sq_ft = 48 * 24 / 12**2
print(pkg_sq_ft)                            # 8 sq ft       area per pkg

nr_pkgs_needed = dims_sq_ft / pkg_sq_ft
print(nr_pkgs_needed)                       # 16            nr pkgs needed
