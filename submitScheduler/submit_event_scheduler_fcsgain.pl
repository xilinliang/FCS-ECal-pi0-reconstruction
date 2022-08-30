#!/usr/bin/perl
###use strict;
###use warnings;

my $folder="[Current working folder]"; #Please write down the path of your working folder here
my $run = "23074018"; #Please write the run number here! 
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
#my $mudstroot="";
#my $mudstroot="/star/data101/TEMP/FCS/st_fwd*_$run"."_*.MuDst.root";
print "$mudstroot \n";


my $pi0root="$folder/run22root/$run/";
if (not -d $pi0root) {mkdir $pi0root or die "can not mkdir $eventroot \n";}

my $outroot = "$pi0root/StFcsPi0invariantmass$run"."_*.root";
system("rm $outroot");

my $filelist="$folder/submitScheduler/$run"."eventroot.list";
if (-f $filelist) {system("rm $filelist");}
system("ls $mudstroot > $filelist");

	system("star-submit-template -template submitScheduler_dataevent_run22.xml -entities runnumber=$run\n")==0
