#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

$| = 1;

sub main {

  my %foods = (
    "mice" => "cheese",
    "dogs" => "meat",
    "birds" => "seeds",
  );
  #Définition de multiple variables
  my ($one, $two, $three) = (13, 21, 38);

  print "The value of \$two is $two\n";

  while( my ($key,$value) = each %foods ) {
    print "$key: $value\n";
  }

  my @animals = keys %foods;

  foreach my $key(sort keys %foods) {
    my $value = $foods{$key};

    print "$key = $value\n";
  }

}

main();