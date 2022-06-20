#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main {
  # les hashes (table de hash) ne se rappelent pas de l'ordre des clés.
  my %months = (
    "Jan" => 1,
    "Dec" => 12,
    "Mar" => 3,
    "Jun" => 6,
  );

  print $months{"Dec"} . "\n";

  my %days = (
    1 => "Monday",
    2 => "Tuesday",
    3 => "Wednesday",
    4 => "Thursday",
  );

  print $days{1} . "\n";
  #Récupérer la valeur des clés
  my @months = keys %months;
  #Boucler sur le tableau @months et alimenter la table de hash avec le contenu de celui ci.
  foreach my $month(@months) {
    my $value = $months{$month};
    print "$month: $value\n";
  }
  #Utiliser la boucle while en créant deux variables pour la clé et valeur de la table de hash.
  while (my ($key,$value) = each %days) {
    print "$key: $value\n";
  }

}

main();