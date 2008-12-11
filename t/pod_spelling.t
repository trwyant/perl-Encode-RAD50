use strict;
use warnings;

my $skip;
BEGIN {
    eval {require Test::Spelling};
    $@ and do {
	print "1..0 # skip Test::Spelling not available.\n";
	exit;
    };
    Test::Spelling->import();
}

our $VERSION = '0.002_02';

add_stopwords (<DATA>);

all_pod_files_spelling_ok ();
__DATA__
CVT
IAS
IRAD
MSWin
Narum
Nora
Perlqq
RAD
RSTS
RSX
RT
Rad
Wyant
charref
comp
darwin
fallback
os
retrocomputing
supress
vms
