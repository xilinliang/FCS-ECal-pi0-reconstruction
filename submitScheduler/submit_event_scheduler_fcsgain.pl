#!/usr/bin/perl
use strict;
use warnings;
use FindBin qw($Bin);
use lib "$Bin/../lib";

my $folder="$Bin/.."; #Please write down the path of your working folder here
print "$folder\n";
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
 print "Remove all files in test folder $outroot (y/n):";
    my $input = <STDIN>; chomp $input;
    if( $input eq "y" ){system("/bin/rm $outroot") == 0 or "Unable to remove files in '$outroot': $! Directories are either empty or don't exist.";}
#system("rm $outroot");

my $filelist="$folder/submitScheduler/$run"."eventroot.list";
 if (-f $filelist) {system("rm $filelist");}
system("ls $mudstroot > $filelist");

	system("star-submit-template -template submitScheduler_dataevent_run22.xml -entities folder=$folder,runnumber=$run\n")==0 or die "sorry loser"
