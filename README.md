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

For a full description of the commands in this toolkit, including a description of the commands, please see stk-helptext.txt.

+ md5sum.pl
+ slurmtk check
+ slurmtk clear
+ slurmtk delbyname
+ (unfinished) slurmtk oneliner: Create a generic single-core slurm script and submit this to the default queue. The qsub script is based on the file named "sbatch1line.template". Usage: 
```
slurmtk oneliner "command and arguments to pass to qsub command"
```
+ slurmtk watch
