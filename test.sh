#!/bin/bash
#$ -cwd
#$ -N batch_23
#$ -o a_batch_23.log
#$ -j y
#$ -q eecs1LM,eecs,eecs2,share,share2,share3,share4,eecs1LM2
date
export PATH="/nfs/stak/students/q/qub/cluster/mitsuba/dist:$PATH"
export LD_LIBRARY_PATH="/nfs/stak/students/q/qub/cluster/mitsuba/dist:/usr/lib64:/nfs/stak/students/q/qub/cluster/usr/lib/:/nfs/stak/students/q/qub/cluster/usr/lib64/:$LD_LIBRARY_PATH"
echo the current path:
echo $PATH
echo $LD_LIBRARY_PATH
hostname
mitsuba -x test.xml
date
