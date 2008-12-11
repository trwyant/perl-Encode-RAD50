use 5.006;

use strict;
use warnings;

use Module::Build 0.28;	# for meta_merge
use Config;
use FileHandle;

our $VERSION = '0.002_01';

my $bldr = Module::Build->new (
	dist_author => 'Tom Wyant (wyant at cpan dot org)',
	dist_abstract => 'Convert to and from the Rad50 character set',
	module_name => 'Encode::RAD50',
	build_requires => {
	    'Module::Build' => 0.28,
	},
	requires => {
	    Encode	=> 0,
	    'Encode::Encoding' => 0,
	},
#	dist_version_from => 'ECI.pm',
#	dynamic_config => 1,
	license => 'perl',
	meta_merge => {
	    no_index => {
		directory => [qw{inc t}],
	    },
	},
);

$bldr->create_build_script ();
