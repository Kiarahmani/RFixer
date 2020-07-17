import pandas as pd
import time
import ast
import subprocess
import glob, os

# CONFIG
input_file =  'ms_src/curated_benchmark_csv.csv'
output_dir =  'ms_src/benchmarks/'
results_dir = 'ms_src/results/'
file_prefix = 'msb'



def create_ms_bench():
    dt = pd.read_csv (input_file, encoding="iso-8859-1")
    iter = 0
    for row in dt.iterrows():
        # define the output file
        output_file = output_dir + file_prefix + "_" + str(iter)
        # read required columns
        q_regex = row[1].Q_regex
        examples = row[1].postivie_examples
        with open(output_file, 'w', encoding="utf-8") as of:
            print (">> writing "+output_file)
            of.write(q_regex)
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
        result_file = results_dir + bench_name + '.res'
        with open(result_file, 'w', encoding='utf-8') as rf:
            subprocess.run(["java", "-jar" , "target/regfixer.jar", "fix" , "--file", file])

def main():
    create_ms_bench()
    run_tests()



if __name__ == "__main__":
    start_time = time.time()
    main()
    print("# total running time: %s seconds" % (time.time() - start_time))
