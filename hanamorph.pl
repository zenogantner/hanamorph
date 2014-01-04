#!/usr/bin/perl

use strict;
use warnings;

use Getopt::Long;
use Text::Hunspell;

GetOptions(
    'data-dir=s' => \(my $data_dir = '/usr/share/hunspell'),
    'language=s' => \(my $lang = 'de_DE'),
    'stem' => \(my $stem = 0),
) or die 'Error parsing command line arguments'; # TODO usage

my $file_prefix = "$data_dir/$lang";
my $speller = Text::Hunspell->new("$file_prefix.aff", "$file_prefix.dic");

while (<>) {
    my $line = $_;
    chomp $line;
    my @words = split /\s+/, $line;
    foreach my $word (@words) {
	print "$word\n";
	my @analysis = $stem ? $speller->stem($word) : $speller->analyze($word);
        foreach my $part (@analysis) {
            print "$part\n";
        }
        print "\n";
    }
}

# Copyright (C) 2014 Zeno Gantner
#
# hanamorph is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# hanamorph is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with hanamorph.  If not, see <http://www.gnu.org/licenses/>.
