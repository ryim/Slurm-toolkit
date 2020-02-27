#!/usr/bin/perl
################################################################################
#                                                                              #
#   Copyright:
#   This Source Code Form is subject to the terms of the Mozilla Public
#   License, v. 2.0. If a copy of the MPL was not distributed with this
#   file, You can obtain one at https://mozilla.org/MPL/2.0/.
#
#   Contributors: Richard Yim*
#
#  *Centre for Cancer
#   Faculty of Medical Sciences
#   Newcastle University
#   UK
#
#   Installation instructions are in README.md
#                                                                              #
################################################################################

use warnings;
use strict;
use FindBin;

#   Locate slurm file
(my $slurmfile = $FindBin::Bin) .= "/lib/md5sum.slurm";

#   Prep
system("mkdir -p eandofiles");

#   Get local time in usable format
my @time = localtime();
my $year = $time[5] + 1900;                 # Year AD
$time[4] += 1;                              # Count months from 1
my $timestring = sprintf("$year%02d%02d_%02d%02d%02d",
    $time[4], $time[3], $time[2], $time[1], $time[0]
);

#   Idiotproofing
if (! $ARGV[0] || ! -e $ARGV[0]) {
    print "Error: No input file given in ARGV[0]\n\n";
    exit(1);
}

#   Run the command
system("sbatch "
    ."--job-name=md5.$ARGV[0] "
    ."-e eandofiles/md5sum.e$ARGV[0].$timestring "
    ."-o eandofiles/md5sum.o$ARGV[0].$timestring "
    ."$slurmfile $ARGV[0]"
);
