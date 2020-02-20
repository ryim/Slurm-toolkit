# Slurm-toolkit
Small scripts and bits which make working with the Slurm Workload Manager easier

## Installation

1. Navigate to your /preferred/installation/directory
1. Use the command: git clone https://github.com/ryim/Slurm-toolkit
1. Add /preferred/installation/directory/Slurm-toolkit to your $PATH in your chosen environment config file (E.G.: ~/.bashrc). The following example is for Bash users.
```
PATH=/preferred/installation/directory/Slurm-toolkit:$PATH
```

## Contents

+ md5sum.pl: Submits an md5sum job to the default queue. A good first script to run.
+ stk clear: Uses the scancel command to remove all jobs in the queue, which were made by this user.
+ (unfinished) stk delbyname: Use the qdel command to remove jobs in the queue.
+ (unfinished) stk oneliner: Create a generic single-core slurm script and submit this to the default queue. The qsub script is based on the file named "sbatch1line.template". Usage: 
```
stk oneliner "command and arguments to pass to qsub command"
```
+ stk watch: Clear the terminal and watch the queue for jobs made by this user, refreshing every 120 seconds Use "Ctrl + C" to exit.
