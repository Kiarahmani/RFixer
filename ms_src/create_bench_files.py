import pandas as pd
import re
import time
import ast
import subprocess
import glob, os
import shlex
from subprocess import Popen, PIPE
from threading import Timer

# CONFIG
input_file  =   'ms_src/curated_benchmark_csv.csv'
output_dir  =   'ms_src/benchmarks/'
results_dir =   'ms_src/results/'
col_res     =   'ms_src/collected_results.csv'
file_prefix =   'msb'
cegis       =   True
bm_range    =   range(0,1000)
timeout     =   1
delim       =   'Æ'


def run(cmd, timeout_sec, f):
    start_time = time.time()
    proc = Popen(shlex.split(cmd), stdout=PIPE, stderr=PIPE)
    timer = Timer(timeout_sec, proc.kill)
    try:
        timer.start()
        stdout, stderr = proc.communicate()
        ret = proc.returncode
        f.write(stdout.decode('utf-8'))
    finally:
        elapsed_time = time.time()-start_time
        if not stderr:
            if ret==0:
                f.write(str(elapsed_time))
                f.write("\nsuccess")
                print (">> "+str(elapsed_time))
                print (">> success")
            else:
                f.write(str(elapsed_time))
                f.write("\ntimeout")
                print (">> "+str(elapsed_time))
                print (">> timeout")
        else:
            f.write(stderr.decode('utf-8'))
            f.write(str(elapsed_time))
            f.write("\nerror")
            print (">> "+str(elapsed_time))
            print (">> error")
        timer.cancel()

# remove benchmarks and results from previous runs
def clean():
    files = glob.glob(output_dir+"*")
    for file in files:
        os.remove(file)
    files = glob.glob(results_dir+"*")
    for file in files:
        os.remove(file)


def create_bench():
    dt = pd.read_csv (input_file, encoding="iso-8859-1")
    iter = 0
    for row in dt.iterrows():
        if not iter in bm_range:
            iter += 1
            continue
        # define the output file
        output_file = output_dir + file_prefix + "_" + str(iter)
        # read required columns
        q_regex = row[1].Q_regex
        a_regex = row[1].A_regex
        examples = row[1].postivie_examples
        with open(output_file, 'w', encoding="utf-8") as of:
            print ("benchmark: "+output_file)
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



def parse_result_file (rf):
    res = rf.read()
    lines  = res.strip().split("\n")
    ret_msg = lines[-1]
    time = lines[-2]
    ln = 0 # line number containing the synthesized regex
    success = False
    for line in lines:
        if "All done" in line:
            ln = ln - 2
            success = True
            break
        else:
            ln += 1
    if ret_msg == 'timeout':
        return 'timeout',0, time
    if ret_msg == 'error':
        return 'error',0, time
    # success
    if success:
        regex = lines[ln]
    else:
        regex = ""
    return regex, len(re.findall(r'add positive:',res)), time



def collect_results():
    dt = pd.read_csv (input_file, encoding="iso-8859-1")
    header = "Benchmark"+delim +"Q regex" + delim + "A regex" + delim + "Rfixer" + delim + "additional examples" + delim + "total time"
    iter = 0
    with open(col_res, 'w', encoding='utf-8') as crf:
        crf.write(header+"\n")
        for row in dt.iterrows():
            if not iter in bm_range:
                iter += 1
                continue
            q_regex = row[1].Q_regex
            a_regex = row[1].A_regex
            pos_ex  = row[1].postivie_examples
            filename = file_prefix + "_" + str(iter)
            with open (results_dir + filename + '.res', 'r', encoding='utf-8') as rf:
                print ("result file: "+filename)
                rfixer_res, cegis_cnt, elapsed_time = parse_result_file(rf)
                if rfixer_res != 'error' and rfixer_res != 'timeout':
                    if rfixer_res=="":
                        regex = q_regex
                    else:
                        regex = re.findall(r'\s+\d+\s+(.*)',rfixer_res)[0]
                else:
                    regex = rfixer_res
                print (">> "+regex)
                crf.write (filename+delim+q_regex+delim+a_regex+delim+regex+delim+str(cegis_cnt)+delim+str(elapsed_time)+"\n")
            iter += 1




def run_tests():
    files = glob.glob(output_dir+"*")
    for file in files:
        bench_name = file.replace(output_dir,'')
        print ('benchmark: '+ bench_name)
        result_file = results_dir + bench_name + '.res'
        with open(result_file, 'w', encoding='utf-8') as rf:
            if cegis:
                run ("java -jar target/regfixer.jar --cegis fix --file " + file, timeout, rf)
            else:
                run ("java -jar target/regfixer.jar fix --file " + file, timeout, rf)

def main():
    print ("\n\n####### cleaning files from previous runs")
    clean()
    print ("done.")
    print ("\n\n####### creating new benchmark files")
    create_bench()
    print ("done.")
    print ("\n\n####### running RFixer on benchmarks")
    run_tests()
    print ("done.")
    print ("\n\n####### collecting results")
    collect_results()
    print ("done.")




if __name__ == "__main__":
    start_time = time.time()
    main()
    print("# total running time: %s seconds" % (time.time() - start_time))
