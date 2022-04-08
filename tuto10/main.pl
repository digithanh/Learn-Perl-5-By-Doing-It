#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
	
	my $text = 'I am 117 years old tomorrow';
	
	if($text =~ /(y\S*\s*o\S*)/) {
		print "Matched: $1\n";
	}
}

main();