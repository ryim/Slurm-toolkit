# Slurm-toolkit

Slurm-toolkit version: 0.4.4

Small scripts and bits which make working with the Slurm Workload Manager easier

## Contents

For a full description of the commands available in the slurmtk script, please see stk-helptext.txt.

+ md5sum.pl: A script which runs up to 20 minute md5sum jobs on compute nodes, keeping login nodes free.
+ queuemetrics - A data logger for the queue
+ slurmtk check - Check the queue for your jobs
+ slurmtk clear - Clear the queue of your jobs
+ slurmtk oneliner - Submit a one-liner job to the queue
+ slurmtk searchanddel - Delete jobs that match a search key
+ slurmtk watch - Watch the queue for your jobs, refreshing every 120s

## Installation

### Dependencies
Slurmtk is designed to work on Bash with minimal dependencies.
The `oneliner` command is written in Perl, and is designed to use the default Perl installation that is provided by the latest Ubuntu distribution.
Just in case you don't have Perl installed, or don't have a normal Linux distro, the following Perl modules are needed to use `oneliner`:

+ Digest::MD5
+ FindBin

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
## queuemetrics
This is a script for monitoring the queue.
It prints the current time and date (in a number of handy formats), then prints the total number of CPUs requested by all jobs in the queue, the number of users, and the total number of jobs.
Since everyone seems to request 2 days for each job, the total time requested is proportional to the number of jobs, and is not an accurate measure of how long a job will be waiting in the queue.
The output file of this script is a handy TSV, which can be graphed by R, Excel, Octave, or your favourite numerical processing package.
It is recommended to run this script in a `screen` shell, so that you can detach the shell and leave it running in the background.

## Copyright

This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this
file, You can obtain one at https://mozilla.org/MPL/2.0/.

