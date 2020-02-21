#!/usr/bin/perl

###############################################################################
#   Copyright notice:   Copyright (c) Richard Yim, 20 Feb 2020, v1.0
#                       All rights reserved.
#
#   Contributors: Richard Yim*
#
#  *Centre for Cancer
#   Faculty of Medical Sciences
#   Newcastle University
#   UK
#
#   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
#   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED 
#   TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
#   PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR 
#   CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
#   EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
#   PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
#   PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
#   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
#   NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
#   SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#   You are free to use, distribute and/or modify this software as you wish, as
#   long as the following conditions are met:
#   The software must retain this copyright notice.
#   Contributors must add their names to the contributors list.
#   Neither the name of the copyright holder nor the names of its contributors 
#   may be used to endorse or promote products derived from this software
#   without specific prior written permission.
#
#   Installation instructions are in README.md
#
###############################################################################

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
