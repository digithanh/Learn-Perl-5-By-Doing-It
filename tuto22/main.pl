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

	LINE: while(my $line = <INPUT>) {

		#Ne pas prendre en compte les lignes vide
		$line =~ /\S+/ or next;

		chomp $line;
		
		my @values = split(/\s*,\s*/, $line);

		#Vérifier si le tableau contient au minimum 3 valeurs
		if (scalar(@values) < 3) {
			print "Invalid line: $line\n";
			next LINE;
		}
		#Vérifier si un champ est vide passer à la prochaine itération
		foreach my $value(@values) {
			if($value eq '') {
				print "Invalid line: $line\n";
				next LINE;
			}
		}
		#Découper le tableau en variable
		my ($name, $payement, $date) = @values;	

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