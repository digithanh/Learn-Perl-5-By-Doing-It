#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

$| = 1;

sub main {
	my $input = './test.csv';

	open INPUT, $input or die "\nCan't open $input\n";
	
	<INPUT>;
	
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
		
		my ($name, $payment, $date) = @values;

		my %values = (
			"Name" => $name,
			"Payment" => $payment,
			"Date" => $date,
		);

		push @data, \%values;

	}
	
	close INPUT;

	#print Dumper(@data);
	
	my $totalPayment = 0;

	foreach my $data(@data) {
		$totalPayment += $data->{"Payment"};
	}

	print "Total payment: $totalPayment";
}

main();


