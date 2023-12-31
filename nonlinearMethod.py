def dotF_FB(i,m):
  if m[i]*m[i+1] <= 0:
    return 0
  elif abs(m[i+1]) <= abs(m[i]) :
    return (3*m[i+1]*m[i])/(m[i] + 2*m[i+1])
  elif abs(m[i+1]) > abs(m[i]):
    return (3*m[i+1]*m[i])/(2*m[i] + m[i+1])

def dotF_AY(i,m,h):
  w = 2*max(h[i],h[i+1])/min(h[i],h[i+1])
  p = max(1, np.log(w)/np.log(3))
  if m[i]*m[i+1] >= 0:
    return np.sign(m[i+1])*(h[i]+h[i+1])**(1/p)*abs(m[i])*abs(m[i+1])/(h[i]*abs(m[i])**p + h[i+1]*abs(m[i+1])**p)**(1/p)
  else :
    return 0