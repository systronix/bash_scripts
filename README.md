# bash scripts
These are crap. Really. But I am tired of manually pushing and pulling every day so I will learn how to automate this with bash scripts.
## Bugs, references, better ideas
Create a message in the wiki for this repo
## Usage
### Bash version
Bruce bash_scripts $ bash --version
GNU bash, version 4.3.42(5)-release (x86_64-pc-msys)
Installed with windows MinGW git tools
### File tree
Paths are hard-coded for a Windows tree
Documents/code where non-Arduino things go, e.g.:
Bruce code $ ls -l
total 24
drwxr-xr-x 1 Bruce 197121 0 Aug 16 10:31 Arduino/
drwxr-xr-x 1 Bruce 197121 0 Sep 13 20:06 bash_scripts/
drwxr-xr-x 1 Bruce 197121 0 Apr 10 06:24 code-maat/
drwxr-xr-x 1 Bruce 197121 0 Aug  3 20:40 ty/

code/bash_scripts is where the scripts will go

also off the code folder:
code/Arduino

code/Arduino/libraries (obviously where this needs to be, subfolder of Arduino)

Run the scripts by typing "bash {script_name.sh}" such as
bash pull.sh
### pull.sh
Goes through all project repos and does "git pull origin master"
### push.sh
Guess what this does. Right.