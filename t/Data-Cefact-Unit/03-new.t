use strict;
use warnings;

use Data::Cefact::Unit;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
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
isa_ok($obj, 'Data::Cefact::Unit');

# Test.
eval {
	Data::Cefact::Unit->new(
		'conversion_factor' => 'kg',
		'description' => 'A unit of mass equal to one thousand grams.',
		'level_category' => 1,
		'name' => 'kilogram',
		'symbol' => 'kg',
	);
};
is($EVAL_ERROR, "Parameter 'common_code' is required.\n",
	"Parameter 'common_code' is required.");
clean();
