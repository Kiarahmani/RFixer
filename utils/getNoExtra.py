import glob
import sys
import re
import os
import argparse
  
parser = argparse.ArgumentParser(description='Optional app description')
parser.add_argument('folder1', type=str,
                    help='A required string positional argument')
parser.add_argument('folder2', type=str,
                    help='A required string positional argument')
parser.add_argument('timeout', type=int,
                    help='A required int positional argument')
args = parser.parse_args()
fname1 = args.folder1
fname2 = args.folder2
timeout = args.timeout

files2 = []
files1 = glob.glob(fname1 + "*.txt")
res = []
count = 0
total_count = 0
total_solve_time = 0
for name in files1:
  files2.append(fname2 + name[len(fname1):])

t1 = 0
t2 = 0

for i in range(0, len(files1)):
  time1 = timeout
  time2 = timeout
  
  tmp1 = 0
  tmp2 = 0

  #print files1[i]
  with open(files1[i], "r") as file:
    contents = file.read()
    content = contents.partition('#c#')[2]
    time = content.partition('#c#')[0]
    if len(time) > 0:
      time1 = int(time)
      tmp1 = 0
      content = contents.partition('#p#')[2]
      p = content.partition('#p#')[0]
      tmp1 += int(p)
      content = contents.partition('#n#')[2]
      n = content.partition('#n#')[0]
      tmp1 += int(n)
      if tmp1 > 0:
        t1 += tmp1

  with open(files2[i], "r") as file:
    contents = file.read()
    content = contents.partition('#c#')[2]
    time = content.partition('#c#')[0]
    if len(time) > 0:
      time2 = int(time)
      tmp2 = 0
      content = contents.partition('#p#')[2]
      p = content.partition('#p#')[0]
      tmp2 += int(p)
      content = contents.partition('#n#')[2]
      n = content.partition('#n#')[0]
      tmp2 += int(n)
      if tmp2 > 0:
        t2 += tmp2

  if not time1 == timeout or not time2 == timeout:
    total_count += 1
    if tmp1 == 0 and tmp2 == 0:
      count += 1

print total_count
print count
  #res.append((time1, time2))

#print 'count ' + str(count)
#print 'total solve time ' + str(total_solve_time)
#print res
#print files1
#print files2


