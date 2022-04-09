#/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
	
	my $text = 'DE67512';
	
	if($text =~ /(DE\d{5})/) {
		print "Matched: $1\n";
	}
}

main();