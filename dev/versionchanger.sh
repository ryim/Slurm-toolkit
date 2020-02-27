#!/bin/bash
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

#   Throw an error if there is no version string in $1
if [ ! $1 ]
then
    echo "Error: No new version name/number given in \$1."
    exit 1
fi

#   Define directory one up from this script
oneup="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/..
echo $oneup

#   Find regular files in directory one up from this. 
#   Replace instances of version numbers in these files with $replace
echo "Files found:"
replace=$1
find $oneup/* -type f \
    | tee /dev/stderr \
    | xargs perl -i -p -e "s/(Slurm-toolkit version:) .*/\$1 $replace/g"

