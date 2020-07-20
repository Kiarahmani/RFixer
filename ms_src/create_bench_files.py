import pandas as pd
import time
import ast
import subprocess
import glob, os
import shlex
from subprocess import Popen, PIPE
from threading import Timer

# CONFIG
input_file =  'ms_src/curated_benchmark_csv.csv'
output_dir =  'ms_src/benchmarks/'
results_dir = 'ms_src/results/'
file_prefix = 'msb'
cegis       = True

def run(cmd, timeout_sec, f):
    proc = Popen(shlex.split(cmd), stdout=PIPE, stderr=PIPE)
    timer = Timer(timeout_sec, proc.kill)
    try:
        timer.start()
        stdout, stderr = proc.communicate()
        print (stderr)
        f.write(stdout.decode('utf-8'))
    finally:
        timer.cancel()


def create_bench():
    dt = pd.read_csv (input_file, encoding="iso-8859-1")
    iter = 0
    for row in dt.iterrows():
        # define the output file
        output_file = output_dir + file_prefix + "_" + str(iter)
        # read required columns
        q_regex = row[1].Q_regex
        a_regex = row[1].A_regex
        examples = row[1].postivie_examples
        with open(output_file, 'w', encoding="utf-8") as of:
            print (">> writing "+output_file)
            of.write(q_regex)
            of.write("\n")
            if cegis:
                of.write(a_regex)
                of.write("\n")
            of.write("+++")
            of.write("\n")
            # iterate over examples 
            for example in ast.literal_eval(examples):
                of.write (example)
                of.write ("\n")
            of.write("---")
            of.write("\n")
        iter += 1


def run_tests():
    files = glob.glob(output_dir+"*")
    for file in files:
        bench_name = file.replace(output_dir,'')
        print ('running RFixer on: '+ bench_name)
        if bench_name == 'msb_17':
            continue
        result_file = results_dir + bench_name + '.res'
        with open(result_file, 'w', encoding='utf-8') as rf:
            run ("java -jar target/regfixer.jar fix --file "+file, 10, rf)
            #try:
            #    #subprocess.run(["java", "-jar" , "target/regfixer.jar", "fix" , "--file", file], stdout=rf)
            #except: 
            #    print ("error")
            #    rf.write("Error occured")

def main():
    create_bench()
    #run_tests()



if __name__ == "__main__":
    start_time = time.time()
    main()
    print("# total running time: %s seconds" % (time.time() - start_time))
