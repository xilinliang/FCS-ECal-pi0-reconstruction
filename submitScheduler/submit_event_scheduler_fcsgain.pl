#!/usr/bin/perl
use strict;
use warnings;

my $folder="/star/data01/pwg/bmagh001/FCS-ECal-pi0-reconstruction"; #Please write down the path of your working folder here
my $run = "23081009"; #Please write the run number here! 
my $day = substr($run,2,3);
my $yy = substr($run,0,2);
my $yy22 = "22";
my $yy23 = "23";
my $year = "";
chomp($yy);
if ($yy eq $yy22) {print "$yy \n"; 
			$year = "2021";}
if ($yy eq $yy23) {print "$yy \n";
			$year = "2022";}
print "year = $year \n";
my $mudstroot="/star/data1*/reco/production_pp500_2022/ReversedFullField/pp500_22_DEV_fcs/$year/$day/$run/st_fwd*.MuDst.root";
print "$mudstroot \n";


my $pi0root="$folder/run22root/$run/";
if (not -d $pi0root) {mkdir $pi0root or die "can not mkdir $pi0root \n";}

my $outroot = "$pi0root/StFcsPi0invariantmass$run"."_*.root";
 print "Remove all files in test folder $outroot (Y/n):";
    my $input = <STDIN>; chomp $input;
    if( $input eq "Y" ){system("/bin/rm $outroot") == 0 or die "Unable to remove files in '$outroot': $!";}
#system("rm $outroot");

my $filelist="$folder/submitScheduler/$run"."eventroot.list";
 if (-f $filelist) {system("rm $filelist");}
system("ls $mudstroot > $filelist");

	system("star-submit-template -template submitScheduler_dataevent_run22.xml -entities runnumber=$run\n")==0 or die "sorry"
