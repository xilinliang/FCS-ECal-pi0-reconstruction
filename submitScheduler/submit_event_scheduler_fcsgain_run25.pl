#!/usr/bin/perl
use strict;
use warnings;

my $current_folder=$ENV{'PWD'};
chomp($current_folder);

my $folder = substr $current_folder, 0,-15;
print "working folder: $folder\n";

print "Please write down the period(1,2,3) and the beginning (A) / end (B): For example, beginning of period 1 is 1A\n";
my $run =<STDIN>;
chomp($run);

my $pi0root = "";
$pi0root="$folder/run25root/$run/";
if (not -d $pi0root) {mkdir $pi0root or die "can not mkdir $pi0root \n";}

my $log="$folder/submitScheduler/log/";
if (not -d $log) {mkdir $log or die "can not mkdir $log \n";}

my $outroot = "$pi0root/StFcsPi0invariantmass$run"."_*.root";
print "Remove all files in test folder $outroot (y/n):\n";
my $input = <STDIN>; chomp $input;
if( $input eq "y" ){system("/bin/rm $outroot") == 0 or "Unable to remove files in '$outroot': $! Directories are either empty or don't exist.";}

#my $filelist="$folder/submitScheduler/$run"."eventroot.list";
#if (-f $filelist) {system("rm $filelist");}
#system("ls $mudstroot > $filelist");


system("star-submit-template-beta -template submitScheduler_dataevent_run25.xml -entities folder=$folder,runnumber=$run\n")==0 or die "sorry, unable to submit the jobs";

