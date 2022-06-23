#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

$| = 1;

sub main {

  my %hash1 = (
    "cat" => "meat",
    "birds" => "seeds",
    "fish" => "worms",
  );

  my @test;

  #Utiliser la fonction push pour mettre le hash dans le array
  push @test, \%hash1;
  #Il est possible après un premier push d'ajouter un nouveau hash à array mais pas avant un push
  $test[1] = \%hash1;

  print $test[0]{"birds"} . "\n";
  print $test[1]{"fish"} . "\n";

}

main();