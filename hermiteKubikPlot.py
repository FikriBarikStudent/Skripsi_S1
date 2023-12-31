import numpy as np
from tabulate import tabulate
import sympy as sp
import matplotlib
matplotlib.rcParams['text.usetex'] = True
import matplotlib.pyplot as plt


x = sp.Symbol('x')


def fun(x):
  return np.sin(x)
def funDot(x):
  return np.cos(x)

def isMonotonic(A):
    x, y = [], []
    x.extend(A)
    y.extend(A)
    x.sort()
    y.sort(reverse=True)
    if(x == A or y == A):
        return True
    return False

def plot(f,color,a,b):
    t = np.linspace(a,b,200)
    y = [ f.evalf(subs = {x:i}) for i in t]
    plot = plt.plot( t, y,color,linewidth=1.5)

def hermiteInterpolant(x_i, f, f_dot):
  p = []
  for i in range(len(x_i)-2):
    h_i = (x_i[i+1]-x_i[i])
    m_i = (f[i+1]-f[i])/h_i
    p_i = sp.simplify((f[i]) + (f_dot[i])*(x-x_i[i]) + ((m_i-f_dot[i])/h_i)*(x-x_i[i])**2 + ((f_dot[i+1]+f_dot[i]-2*m_i)/h_i**2)*(x-x_i[i+1])*(x-x_i[i])**2)
    p.append(p_i)

  for i in range(len(p)):
    color = ['b','g','r','m','c']
    plot(p[i],color[i%5],x_i[i],x_i[i+1])
  plt.show()
  return p

def scatterGraf(x_axis, y_axis):

  plt.title(r'Diagram Error $\dot{f}_i$')
  plt.scatter(x_axis, y_axis, color="darkblue", marker='x')


  plt.xlabel('x')
  plt.ylabel(r"$|f'(x_i)-\dot{f}_i|$")

  plt.grid(True)
  plt.legend()

  plt.show()

def displayError(x_i, wi, dif_F, dotF):
  x_i = [x_i[i] for i in wi]
  dif_y = [dif_F(x) for x in x_i]
  abs_e = np.absolute(dif_y-dotF)
  scatterGraf(x_i, abs_e)
  e = max(abs_e)
  return e