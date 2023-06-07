a = [1, 2, 3]
b = [4, 5, 6]
c = [7, 8, 9]
d = [a, b, c]
t3 = [[a], [b], [c]]
IO.inspect(Nx.tensor(d))
IO.inspect(Nx.tensor(t3))
