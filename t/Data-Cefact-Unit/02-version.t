use strict;
use warnings;

use Data::Cefact::Unit;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Cefact::Unit::VERSION, 0.01, 'Version.');
