hanamorph
=========

morphological analysis using hunspell

For some languages, e.g. Hungarian, hunspell offers richer morphological analysis.
For others, like German, it only returns the stem and the suffixes.


Examples
--------

echo "éttermek" | ./hanamorph.pl --lang=hu_HU
éttermek
 st:étterem po:noun ts:PLUR ts:NOM


echo "Tische und Stühle" | ./hanamorph.pl --lang=de_DE
Tische
 st:tisch fl:E
 st:Tisch fl:E

und
 st:und

Stühle


Installation
------------

To run the software, you need the [CPAN](http://www.cpan.org/) module
[`Text::Hunspell`](http://search.cpan.org/~cosimo/Text-Hunspell/).

On Debian or Debian-based systems like Ubuntu, the module is available
under the name `libtext-hunspell-perl`.


Copyright & Licensing
---------------------

Copyright (C) 2014 Zeno Gantner

hanamorph is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

hanamorph is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with hanamorph.  If not, see <http://www.gnu.org/licenses/>.
