Instruction on fit for each tower invariant mass

0) Make sure all the jobs are completed successfully.

1) Merge all the root files: 

	Merge all the root files for 2 runs into one final root file. The final root file must name under: StFcsPi0invariantmass{$day}testAll_iteration{$N}.root  where {$day} can be run day of the run , {$N} is number of iterations.

2) Put the final root file under run22root/ folder

3) Use the command below to fit for all tower invariant mass plot and get fit status: (Please keep the single and double quote symbols, and keep the variable that you set in step 1)

	root4star -b -q draw_all_towersmassfit2.C'("{$day}","{$N}")' 

4) Check the tower fit status plot for south and north ECal (statusN_{$N}.root, and statusS_{$N}.root) 

