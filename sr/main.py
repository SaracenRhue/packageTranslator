from os import system as cmd
import sys
import yaml
import sys

arguments = sys.argv
arguments.pop(0)
task = arguments[0] # install, remove, update
arguments.pop(0)
packages = arguments # list of packages

with open('sr/config.yml', 'r') as file:
    config = yaml.safe_load(file)
    sr = config['system_manager']
    sr_install = config[sr]['install']
    sr_remove = config[sr]['remove']
    sr_update = config[sr]['update']
    pkg_list = config[sr]['packages']
    npm = config['npm']



if 'i' in task: # install
    for package in packages:
        if package in pkg_list: # check if package is in the list
            package = pkg_list[package]
            cmd(f"{sr_install} {package}")
        elif package in npm: # check if package is in the npm list
            package = npm[package]
            cmd(f"npm install -g {package}") 
        else:
            cmd(f"{sr_install} {package}")
elif 'r' or 'un' in task: # remove
    for package in packages:
        if package in pkg_list: # check if package is in the list
            package = pkg_list[package] 
            cmd(f"{sr_install} {package}")
        elif package in npm: # check if package is in the npm list
            package = npm[package]
            cmd(f"npm remove {package}")
        else:
            cmd(f"{sr_remove} {package}")
elif 'u' in task: # update
    cmd(sr_update)
