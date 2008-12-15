use 5.006;	# for 'our'.

use strict;
use warnings;

use ExtUtils::MakeMaker;

my $vers = '';

(my $mmv = ExtUtils::MakeMaker->VERSION) =~ s/_//g;

my %args = (
    NAME => 'Encode::RAD50',
    VERSION_FROM => 'lib/Encode/RAD50.pm',
    PREREQ_PM => {
	Encode	=> 0,
	'Encode::Encoding' => 0,
    },
    PL_FILES => {},	# Prevent old MakeMaker from running Build.PL
    'dist' => {COMPRESS => 'gzip', SUFFIX => 'gz'},
    AUTHOR => 'Tom Wyant (wyant@cpan.org)',
    ABSTRACT => 'Convert to and from the Rad50 character set',
);

$mmv >= 6.31 and $args{LICENSE} = 'perl';

$mmv >= 6.4501 and $args{META_MERGE} = {
    resources => {
	license => 'http://dev.perl.org/licenses/',
    },
};

WriteMakefile (%args);

