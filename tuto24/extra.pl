#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

$| = 1;

sub main {
	my $input = './test.csv';

	open INPUT, $input or die "\nCan't open $input\n";
	
	my $headings = <INPUT>;
	chomp $headings;
	my @headings = split(/\s*,\s*/, $headings);
	
	my @data;

	LINE: while(my $line = <INPUT> ) {
		
		$line =~ /\S+/ or next;
		$line =~ s/^\s*|\s*$//g;
		$line =~ s/\?|approx\.|\$//g;
		
		chomp $line;

		my @values = split(/\s*,\s*/, $line);

		if(scalar(@values) < 3) {
			print "Invalid line: $line\n";
			next LINE;
		}

		foreach my $value(@values) {
			if(length($value) == 0) {
				print "invalid line: $line\n";
				next LINE;
			}
		}
		
		my %data;

		for(my $i=0; $i<@headings; $i++) {
			my $heading = $headings[$i];
			my $value = $values[$i];

			$data{$heading} = $value;
		}

		push @data, \%data;

	}
	
	close INPUT;

	print Dumper(@data);
	
	my $totalPayment = 0;

	foreach my $data(@data) {
		$totalPayment += $data->{"Payment"};
	}

	print "Total payment: $totalPayment";
}

main();


