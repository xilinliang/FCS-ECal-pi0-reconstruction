Instruction on running schuduler job submit for pi0 reconstruction.


1) For each iteration: 

	 1.0) (For the second and further iteration) Before you start a new iteration, please make sure the previous iteration analysis is completed and the fcsgaincorr.txt is updated to the gain correction result from the previous calculation.

	 1.1) run command "perl submit_event_scheduler_fcsgain.pl" (for run22) if we do calibration for run23 test run run command "perl submit_event_scheduler_fcsgain_run23.pl"; if we do calibration for run 24 low lumin runs run "perl submit_event_scheduler_fcsgain_run24lowlumin.pl" , follow the command and wait until the scheduler submit is completed.

	 1.2) run command "perl submit_event_scheduler_fcsgain.pl" for the other run (run 22 only, since run23 test run and run 24 low lumin runs will automatic run all the files), follow the command and wait until the scheduler submit is completed.

	 1.2) run command "perl submit_event_scheduler_fcsgain_run24.pl" for the other run (good for run 24 run#2522104[1,5,6], this version won't regenerate the file list), follow the command and wait until the scheduler submit is completed.

ps: Depending on the fit result of each tower invariant mass, you might need about 2 or 3 iterations to get most of the tower invariant mass close to pi0 invariant mass.


2) For each iteration, you need to wait until all the jobs are completed to go to the next step (back to README.md in the main working folder)






