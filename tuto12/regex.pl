#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
	my $text ="The code for this device is GP8654..";
	
	if($text =~ /\sis\s(\w{2}\d{2,6})\./) {
		print "The code is $1\n";
	} else {
		print "Not found.\n";
	}
}

main();