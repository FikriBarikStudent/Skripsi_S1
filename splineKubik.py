def S(a, b, n, f, df, grid="uniform", display=False, plot=False):
  if grid == "uniform":
    x_i = np.linspace(a,b,n)
    n = len(x_i)
  if grid == "nonuniform":
    x_i = []
    k = 4/(n-1)
    for i in range(n+1):
        if i%2 == 0:
            x_i.append(i/2*k)
        else:
            x_i.append(((i - 1)/2 + 1/4)*k)
  y = [f(x) for x in x_i]
  h = [x_i[i+1]- x_i[i] for i in range(n-1)]
  m = [(y[i+1]-y[i])/h[i] for i in range(n-1)]
  lam = [h[i+1]/(h[i] + h[i+1]) for i in range(n-2)]
  mu = [h[i]/(h[i] + h[i+1]) for i in range(n-2)]

  A = np.zeros((n,n))

  B = np.zeros((n-2,1))

  for i in range(n-2):
    A[i,i]=2
    A[i,i+1]=mu[i]
    A[i,i-1]=lam[i]
    B[i,0] = 3*(lam[i]*m[i] + mu[i]*m[i+1])

  A = np.delete(A, [n-2,n-1], 0)
  A = np.delete(A, [n-2,n-1], 1)

  B[[0,n-3],:]=[[B[0,0] - lam[0]*df(x_i[0])],[B[n-3,0] - mu[n-3]*df(x_i[n-1])]]

  dotF = np.linalg.inv(A) @ B

  dotF = np.insert(dotF,[0,n-2],[df(x_i[0]),df(x_i[n-1])])
  
  if display:
    hermiteInterpolant(x_i, y, dotF)

  wi = range(n)

  if plot:
    displayError(x_i, wi, df, dotF)

  return dotF, m