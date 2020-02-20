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
+ (unfinished) qclear: Uses the qdel command to remove all jobs in the queue.
+ (unfinished) qdelbyname: Use the qdel command to remove jobs in the queue.
+ (unfinished) sbatch1line: Create a generic single-core slurm script and submit this to the default queue. The qsub script is based on the file named "sbatch1line.template". Usage: 
```
qsub1line "command and arguments to pass to qsub command"
```
+ (unfinished) qwatch: Clear the terminal and watch Legion's queue, refreshing every 120 seconds.
