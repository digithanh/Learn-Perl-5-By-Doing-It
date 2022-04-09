#!/usr/bin/perl
use strict;
use warnings;

$|=1;


sub main {
	my @email = (
		'toto@gmail.com',
		'tata@live.com',
		'titi@.com',
		'tutu@aol.com',
		'david@azhazdh',
		);
	
	for my $mail(@email) {
		if($mail =~ /(^\w+\@\w+\.\w+)/) {
			print "$1 is valid email\n";
		} else {
			print "$mail is not valid email\n";
		}
	}
}

main();