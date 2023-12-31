import numpy as np

def RFB(a, b, n, f, df, grid="uniform", nonlinearMethod="FB", display=False, plot=False, exp1=False, exp2=False):
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

  I = checkMonotone(dotF,m)

  if exp1:
    I = [int(n/2)-1]

  if exp2:
    I = [int(n/2)-1, int(n/2)]

  A = np.delete(A, I, 0)
  A = np.delete(A, I, 1)

  if nonlinearMethod == "FB":
    for i in I:
        B[i-1,0] = B[i-1,0] - mu[i-1]*dotF_FB(i,m)
        B[i+1,0] = B[i+1,0] - lam[i+1]*dotF_FB(i,m)

  if nonlinearMethod == "AY":
    for i in I:
        B[i-1,0] = B[i-1,0] - mu[i-1]*dotF_AY(i,m,h)
        B[i+1,0] = B[i+1,0] - lam[i+1]*dotF_AY(i,m,h)

  B = np.delete(B, I, 0)

  dotF_NL = np.linalg.inv(A) @ B

  for i in I:
    dotF_NL = np.insert(dotF_NL, i, dotF_FB(i,m), axis=0)

  dotF_NL = np.insert(dotF_NL,[0,n-2],[df(x_i[0]),df(x_i[n-1])])

  if display:
    hermiteInterpolant(x_i, y, dotF_NL)

  wi = range(n)

  if plot:
    displayError(x_i, wi, df, dotF_NL)

  return dotF_NL