use 5.006;

use strict;
use warnings;

use Module::Build;
use Config;
use FileHandle;

our $VERSION = '0.002_02';

(my $mbv = Module::Build->VERSION) =~ s/_//g;

my %args = (
    dist_author => 'Tom Wyant (wyant at cpan dot org)',
    dist_abstract => 'Convert to and from the Rad50 character set',
    module_name => 'Encode::RAD50',
    build_requires => {
    },
    requires => {
	Encode	=> 0,
	'Encode::Encoding' => 0,
    },
##    dynamic_config => 1,
    license => 'perl',
);

$mbv >= 0.28 and $args{meta_merge} = {
    no_index => {
	directory => [qw{inc t}],
    },
};

my $bldr = Module::Build->new(%args);

$bldr->create_build_script ();
