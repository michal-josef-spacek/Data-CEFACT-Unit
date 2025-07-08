package Data::CEFACT::Unit;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.15 qw(check_required check_strings);
use Readonly;
use Unicode::UTF8 qw(decode_utf8);

Readonly::Array our @STATUSES => ('D', 'X', decode_utf8('¦'));

our $VERSION = 0.01;

has common_code => (
	is => 'ro',
);

has conversion_factor => (
	is => 'ro',
);

has name => (
	is => 'ro',
);

has description => (
	is => 'ro',
);

has level_category => (
	is => 'ro',
);

has status => (
	is => 'ro',
);

has symbol => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'common_code'.
	check_required($self, 'common_code');

	# Check 'level_category'.
	check_required($self, 'level_category');

	# Check 'name'.
	check_required($self, 'name');

	# Check 'status'.
	## Undefined status means valid item.
	check_strings($self, 'status', \@STATUSES);

	return;
}

1;
