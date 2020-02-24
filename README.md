# Slurm-toolkit

v0.4.0

Small scripts and bits which make working with the Slurm Workload Manager easier

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

## Contents

For a full description of the commands available in the slurmtk script, please see stk-helptext.txt.

+ md5sum.pl: A script which runs up to 20 minute md5sum jobs on compute nodes, keeping login nodes free.
+ slurmtk check
+ slurmtk clear
+ slurmtk delbyname
+ slurmtk oneliner
+ slurmtk watch
