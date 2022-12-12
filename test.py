import subprocess as sb
import os

full_path="./test/text.txt"
tmp = full_path.split("/")
path = "/".join(tmp[:-1])
name= tmp[-1]
new_name = name.split(".")[0] + "_cmp.txt"
cwd = os.getcwd()

os.system(f"./comp_prog {full_path}")
os.system(f"mv prog_cmp.txt {path}/{new_name}")