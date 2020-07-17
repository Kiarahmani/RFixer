import subprocess
import glob, os



# CONFIG
FILE_DIR = 'ms_bench/'
FILE_TYPE = 'txt'


os.chdir(FILE_DIR)
files = glob.glob("*"+FILE_TYPE)
os.chdir('../')

for file in files:
    print(">>> analyzing file:"+str(file))
    subprocess.run(["java","-jar" ,"target/regfixer.jar", "fix", "--file", str(file)])
