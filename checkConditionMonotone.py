def compareSign(a,b):
  return abs(a) + abs(b) == abs(a + b)

def checkMonotone(dotF,m):
  NS = []
  for i in range(len(dotF)):
    if not (compareSign(dotF[i],m[i]) and compareSign(dotF[i],m[i+1])):
      NS.append(i)
    elif abs(dotF[i]) > 3*min(abs(m[i]),abs(m[i+1])):
      NS.append(i)
  return NS