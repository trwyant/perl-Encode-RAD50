use strict;
use warnings;

my $skip;
BEGIN {
    eval "use Test::Spelling";
    $@ and do {
	eval "use Test";
	plan (tests => 1);
	$skip = 'Test::Spelling not available';;
    };
}

our $VERSION = '0.002';

if ($skip) {
    skip ($skip, 1);
} else {
    add_stopwords (<DATA>);

    all_pod_files_spelling_ok ();
}
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
