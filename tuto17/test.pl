#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my @animals = ('dog', 'cat', 'rabbit');
my @fruits = ('apple', 'orange', 'banana');

my @values;

#L'antislash permt de renvoyer à la référence du tableau initial ce qui créera un tableau à deux dimensions.
push @values, \@animals;
push @values, \@fruits;

print Dumper @values;

#Créer une variable de référence d'un tableau et y accéder avec la flèche.

my $fruits_ref = \@fruits;
print $fruits_ref->[0] . "\n";