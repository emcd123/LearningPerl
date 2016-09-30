#!/usr/bin/perl
use warnings;
use strict;

my %edges = ( 6 => [3, 7],
              8 => [9],
              1 => [3],
              0 => [2],
              3 => [0, 4],
              7 => [8],
              9 => [6],
              2 => [1]);

my $startvertex = 6;

my $location = $startvertex;
my @stack = ($startvertex);
my @circuit;

while (@stack) {
    if (defined $edges{$location}[0]) {
        push @stack, $location;
        $location = shift @{ $edges{$location} };
    } else {
        push @circuit, $location;
        $location = pop @stack;
    }
}
my @revcircuit = reverse @circuit;
print "@revcircuit\n";
