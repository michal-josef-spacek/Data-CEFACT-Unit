use strict;
use warnings;

use Data::Cefact::Unit;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::Cefact::Unit->new(
	'common_code' => 'KGM',
	'conversion_factor' => 'kg',
	'description' => 'A unit of mass equal to one thousand grams.',
	'level_category' => 1,
	'name' => 'kilogram',
	'symbol' => 'kg',
);
my $ret = $obj->common_code;
is($ret, 'KGM', 'Get common code (KGM).');
