#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;  

$|=1;

sub main {
	my $input = '.\test.csv';
	
	unless(open(INPUT, $input)) {
		die "\n Connot open $input\n";
	}
	
	<INPUT>;
	my @lines;

	while(my $line = <INPUT>) {
		chomp $line;

		my @values = split(/\s*,\s*/, $line);

		#Créer un tableau dans un tableau grace à la notion de référence avec l'antislash.
		push @lines, \@values;
	}
	
	close(INPUT);

	#Accéder à un élément dans le tableau du tableau.
	print $lines[1][2] . "\n"; 

	#Boucle foreach pour parcourir le tableau @lines
	foreach my $line(@lines) {
		print Dumper($line);
		#Accéder à une référence d'un élément dans la boucle pour la déférencer avec la flèche.
		print "Name " . $line->[0] . "\n";
	}
}

main();