#!/usr/bin/perl
###use strict;
###use warnings;

my $folder=$ENV{'PWD'};
chomp($folder);
my $run = "23027048"; #Please write the run number here! 
my $day = substr($run,2,3);
my $yy = substr($run,0,2);
my $yy22 = "22";
my $yy23 = "23";
chomp($yy);
if ($yy eq $yy22) {print "$yy \n"; 
			$year = "2021";}
if ($yy eq $yy23) {print "$yy \n";
			$year = "2022";}
print "year = $year \n";
#my $mudstroot="/star/data*/reco/fcsGainCalibration/ReversedFullField/dev/2022/$day/$run/st_physics_*.MuDst.*";
#my $mudstroot="/gpfs01/star/subsysg/FPS/fcs2022/$run/st_physics_*.MuDst.*";
#my $mudstroot="/star/data101/reco/express{A,B,C,D}/st_physics_*.MuDst.*";
# $mudstroot is the MuDst file path
print "$mudstroot \n";


#my @file_run= readdir(DIR);
#$number_run= @file_run;
my $pi0root="[Current working folder]/run22root/$run/";
if (not -d $pi0root) {mkdir $pi0root or die "can not mkdir $eventroot \n";}

my $filelist="$folder/$run"."eventroot.list";
if (-f $filelist) {system("rm $filelist");}
system("ls $mudstroot > $filelist");

	system("star-submit-template -template submitScheduler_dataevent_run22.xml -entities runnumber=$run\n")==0
