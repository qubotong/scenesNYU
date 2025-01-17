#!/bin/bash

# use current working directory for input and output
# default is to use the users home directory
#$ -cwd

# name this job
#$ -N 2222comparison

# send stdout and stderror to this file
#$ -o water2222comparison.log
#$ -j y

# select queue - if needed 
#$ -q eecs1LM,eecs,eecs2,share,share2,share3,share4,eecs1LM2

# print date and time
date

export PATH="/nfs/stak/students/q/qub/cluster/mitsuba/dist:$PATH"
export LD_LIBRARY_PATH="/nfs/stak/students/q/qub/cluster/mitsuba/dist:/usr/lib64:/nfs/stak/students/q/qub/cluster/usr/lib/:/nfs/stak/students/q/qub/cluster/usr/lib64/:$LD_LIBRARY_PATH"
echo the current path:
echo $PATH
echo $LD_LIBRARY_PATH

# see where the job is being run
hostname

#mitsuba output_water_2222_v3_opath.xml_1495242924/img_0_clr.xml water_2222_v3_erpt.xml water_2222_v3_bdpt.xml
mitsuba water_2222_v4_erpt.xml water_2222_v4_bdpt.xml water_2222_v4_opath_img_0_clr.xml
date
