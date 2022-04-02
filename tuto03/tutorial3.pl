#!/usr/bin/perl
use strict;
use warnings;

use LWP::Simple;

sub main {
	print "Downloading ...\n";
	 #getprint("https://www.caveofprogramming.com");
	
	#getstore("http://www.caveofprogramming.com", "home.html");
	
	my $code = getstore("https://www.caveofprogramming.com", "home.html");;

	if ($code == 200) {
		print "Success\n";
	} else {
		print "Failed\n";
	}
	print "Finished\n";
}

main();