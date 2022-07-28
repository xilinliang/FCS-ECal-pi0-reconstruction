Instruction on running schuduler job submit for pi0 reconstruction.

0) Make sure the path in the scripts are correct for your working folder.

1) Based on the number of iterations, do step 1.1) or 1.2). DO NOT do both step in each iteration.

1.1) For the 1st, 2nd, 3rd iteration and 5th iteration:  
	 1.1.1) open submit_event_scheduler_fcsgain.pl file , go to line 7 and change the run number to the one that you need.
	 1.1.2) run command "perl submit_event_scheduler_fcsgain.pl" , wait until the scheduler submit is completed.
	 1.1.3) open submit_event_scheduler_fcsgain.pl file again, go to line 7 and change the run number to another run number that you need.
	 1.1.4) run command "perl submit_event_scheduler_fcsgain.pl" again , wait until the scheduler submit is completed.

1.2) For the 4th iteration:  
	 1.2.1) open submit_event_scheduler_fcsgain_pT.pl file , go to line 7 and change the run number to the one that you need.
	 1.2.2) run command "perl submit_event_scheduler_fcsgain_pT.pl" , wait until the scheduler submit is completed.
	 1.2.3) open submit_event_scheduler_fcsgain_pT.pl file again, go to line 7 and change the run number to another run number that you need.
	 1.2.4) run command "perl submit_event_scheduler_fcsgain_pT.pl" again , wait until the scheduler submit is completed.

ps: Depending on the fit result of each tower invariant mass, you might need 6th or more iterations, then they need to go to step 1.1)


2) You need to wait until all the jobs are completed to go to the next step (back to README.md in the main working folder)






