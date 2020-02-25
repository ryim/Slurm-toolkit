# Slurm-toolkit

Slurm-toolkit version: 0.4.2

Small scripts and bits which make working with the Slurm Workload Manager easier

## Contents

For a full description of the commands available in the slurmtk script, please see stk-helptext.txt.

+ md5sum.pl: A script which runs up to 20 minute md5sum jobs on compute nodes, keeping login nodes free.
+ slurmtk check - Check the queue for your jobs
+ slurmtk clear - Clear the queue of your jobs
+ slurmtk oneliner - Submit a one-liner job to the queue
+ slurmtk searchanddel - Delete jobs that match a search key
+ slurmtk watch - Watch the queue for your jobs, refreshing every 120s

## Installation

### Using "git clone" (Preferred)
This method is preferred, because updating the package to the latest version is a simple matter of navigating to the Slurm-toolkit directory, and using the command `git pull`.

1. Navigate to your /preferred/installation/directory on a login node
1. Use the command: 
    ```
    git clone https://github.com/ryim/Slurm-toolkit
    ```
1. Add /preferred/installation/directory/Slurm-toolkit to your $PATH in your chosen environment config file (E.G.: ~/.bashrc). The following example is for Bash users.
    ```
    PATH=/preferred/installation/directory/Slurm-toolkit:$PATH
    ```

### Downloading the zip file from Github
1. Navigate to your /preferred/installation/directory on a login node
1. Download the zip archive from Github, then unzip it:
    ```
    wget https://github.com/ryim/Slurm-toolkit/archive/master.zip
    unzip master.zip
    ```
1. Add /preferred/installation/directory/Slurm-toolkit-master to your $PATH in your chosen environment config file (E.G.: ~/.bashrc). The following example is for Bash users.
    ```
    PATH=/preferred/installation/directory/Slurm-toolkit-master:$PATH
    ```


