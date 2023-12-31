def f(x):
  if 0 <= x and x <= 1:
    return x**4 + np.sin(x)
  elif 1 < x and x <=2:
    return 4 + x**4 + np.cos(x)

def df(x):
  if 0 <= x and x <= 1:
    return 4*x**3 + np.cos(x)
  elif 1 < x and x <=2:
    return 4*x**3 - np.sin(x)

# def f(x):
#   if 0 <= x and x <= 2:
#     return x**4 + np.sin(x)

# def df(x):
#   if 0 <= x and x <= 2:
#     return 4*x**3 + np.cos(x)