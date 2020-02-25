#!/bin/bash
################################################################################
#                                                                              #
#   Copyright notice:   Copyright (c) Richard Yim, 20 Feb 2020
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
#   You are free to use, distribute and/or modify this software as you wish as
#   long as the following conditions are met:
#   The software must retain this copyright notice.
#   Contributors must add their names to the contributors list.
#   Neither the name of the copyright holder nor the names of its contributors 
#   may be used to endorse or promote products derived from this software
#   without specific prior written permission.
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

