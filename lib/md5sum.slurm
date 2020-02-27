#!/bin/bash -l
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

################################################################################
#                              Environment setup                               #

#   Set number of cores min-max
#SBATCH -N 1-1

#   Set RAM per core
#SBATCH --mem-per-cpu=1G

#   Set mail preferences
#SBATCH --mail-type=ALL

#   Set queue in which to submit: defq bigmem short 
#SBATCH -p defq

#   Set wall clock time
#SBATCH -t 0-0:20:00

#                                                                              #
################################################################################

# Set up error checking
# Stop on any error
set -e
# Stop on an error inside a pipeline
set -o pipefail
# Throw an error on calling an unassigned variable
set -u

#   Run the command
md5sum $1
