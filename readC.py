import sys
#from time 
import time

sys.stdin.flush()

timeDesired = 5 #in seconds
tTot = 0
t0G = 0
t0A = 0
t0E = 0
done = False

start = time.time()
time.clock()
while True:
	for line in sys.stdin:
		#print(line[0], end="") #uncomment if not printing whole line
		tTot = time.time() - start #for time limit, but real code does not need
		#print(round(tTot)) #was for checking time stopping
		if (line[0] == "G"):
			if round(tTot) > timeDesired: #for time limit, but real code does not need
				done = True
				break
			tG = time.time()
			#print(round(1.0 / (tG - t0G))) #Hz
			print(tG - t0G)
			print(line)
			t0G = tG
		elif line[0] == "A":
			if round(tTot) > timeDesired: #for time limit, but real code does not need
				done = True
				break
			tA = time.time()
			#print(round(1.0 / (tA - t0A))) #Hz
			print(tA - t0A)
			print(line)
			t0A = tA	
		elif line[0] == "E":
			if round(tTot) > timeDesired: #for time limit, but real code does not need
				done = True
				break
			tE = time.time()
			#print(round(1.0 / (tE - t0E))) #Hz
			print(tE - t0E)
			print(line)
			t0E = tE
	if done: break
	

