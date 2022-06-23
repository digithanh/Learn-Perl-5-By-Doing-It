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

	my @data;

	while(my $line = <INPUT>) {
		chomp $line;
		#Mettre les éléments splités dans des variables distincts.
		my ($name, $payement, $date) = split(/\s*,\s*/, $line);
		#Définir chaque clé du hash avec le nom des colonnes du CSV et mettre les variables splités entant que valeure.
		my %values = (
			"Name" => $name,
			"Payement" => $payement,
			"Date" => $date,
		);

		push @data, \%values;
	}
	
	close(INPUT);
	
	#Boucle foreach pour parcourir le tableau @lines
	foreach my $data(@data) {
		#Pour accéder aux valeurs de la colonne clé du hash déférencer avec la flèche.
		print $data->{"Payement"} . "\n";
	}
	#En dehors d'une boucle on utilise l'écriture habituelle pour accéder à un élément du hash stocké dans array.
	print "Descartes :" . $data[3]{"Name"};
}

main();