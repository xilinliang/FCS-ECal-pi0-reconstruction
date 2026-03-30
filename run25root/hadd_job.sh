#!/bin/bash

echo "Please write down the period(1,2,3) and the beginning (A) / end (B): For example, beginning of period 1 is 1A"
read run

rm ./$run/StFcsPi0invariantmassAll*.root

for i in {0..9}
do
	eval "hadd ./$run/StFcsPi0invariantmassAll$i.root ./$run/StFcsPi0invariantmass*$i.root"

done

eval "hadd ./$run/StFcsPi0invariantmassAll.root ./$run/StFcsPi0invariantmassAll*.root"
