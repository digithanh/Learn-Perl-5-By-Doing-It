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
	#Première méthode mettre un compteur pour ajouter chaque ligne dans le tableau
	#my $count = 0;

	while(my $line = <INPUT>) {
		chomp $line;

		my @values = split(/\s*,\s*/, $line);
		#Dans le tableau lines à chaque boucle ajouter la ligne grace au compteur
		#$lines[$count] = $line;
		#$count++;

		#Deuxième méthode avec la fonction push
		push @lines, $line;
	}
	
	close(INPUT);
	
	#Boucle foreach pour parcourir le tableau @lines
	foreach my $line(@lines) {
		print $line . "\n";
	}
}

main();