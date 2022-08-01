# FCS-ECal-pi0-reconstruction

STAR FCS ECal pi0 reconstruction analysis framework

Author: Xilin Liang

Email: xilin.liang@email.ucr.edu


Instruction:

The framework contain:

	1) StRoot : the maker for pi0 reconstruction

	2) runMuDst.C : run macro, include the pi0 reconstruction by highest energy pair

	3) runMuDst_pT.C : run macro, include the pi0 reconstruction by highest pT pair

	4) fcsgain.txt : uniform gain factor file , no need to change
	
	5) fcsgain_corr.txt : gain correction file (not included in Git, check email or ask Xilin or Akio to provide), varied by different towers. For each iteration, you will need to change this file before each iteration
	
	6) submitScheduler: the folder for submitting jobs to Scheduler
	
	7) run22root : the folder for saving root files and analysis

How to do the analysis on pi0 reconstruction:
	
	1) Make sure the files and folders are created and accessable

	2) Complete the one-time set up on the scripts:
		
		2.1) Know the full path of the working folder , you can use "pwd" command to know.

		2.2) Go to submitScheduler/ folder, then go through all the sctipts (.pl files and .xml files) , replace [Current working folder] with the full path of the working folder.

		2.3) At submitScheduler/ folder, for both .xml files, at line 27, replace [The folder you would like to save the log file] with the exact full path of the folder that you want to save the run error log files.

	
	3) Compile the library: (follow the command below at the main working folder (current folder))
		 
		 stardev
		 
		 cons

	4) You will be provided the fcsgaincorr.txt for the first iteration. Copy the corresponding fcsgaincorr.txt for the run numbers (for each pair, choose either one run number) to the main working folder. 

	5) Then start the iteration (repeat several times until you get the good invariant mass close to pi0 invariant mass):
		
		5.1) Go to submitScheduler/ folder, follow the instruction in submitScheduler/README.md

		5.2) Go to run22root/ folder, follow the instruction in run22root/README.md

	6) Finally save the final gain correction file fcsgaincorr_{$day}_{$N}.txt and fcsgaincorrOffline_{$day}_{$N}.txt . Akio will need the calibrated gain correction files. 



