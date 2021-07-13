from subprocess import Popen, PIPE
import sys

BUF_SIZE = 37

sys.stdin.flush()

for line in sys.stdin:
	print("p")
	sensor_bytes = sys.stdin.readline()
	print(str(line))



# t=0 

# def exec(*args):
	# with Popen(args, stdout=PIPE) as proc:
		# while proc.poll() is None:
			# t = t+1
			# print(proc.stdout.read(40))
		# print(proc.stdout.read())
		# print(t)


# p = Popen(cmd, stdout=PIPE, stderr=PIPE)
# while p.poll() is None:
	# txt = p.stdout.read().decode("utf-8")
	# result += txt
	# print(result)


#for line in iter(p.stdout.readline,""):
#	print(line)


# network_data = 'data from the network goes here'
# p = subprocess.Popen(['cBNO080.c', 'optional', 'arguments'], 
                     # stdin=subprocess.PIPE)
# p.stdin.write(network_data)
