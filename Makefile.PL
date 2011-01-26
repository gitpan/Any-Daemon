#!/usr/bin/env perl
use ExtUtils::MakeMaker;

use 5.008;

my $version = '0.10';

WriteMakefile
 ( NAME	 	=> 'Any::Daemon'
 , VERSION	=> $version
 , PREREQ_PM    =>
    { Test::More  => 0.80
    , Log::Report => 0.90
    }
 , EXE_FILES    => []
 , AUTHOR       => 'Mark Overmeer'
 , ABSTRACT     => 'general purpose daemon'
 , LICENSE      => 'perl'
 );

### used by oodist during production of distribution
sub MY::postamble { <<'__POSTAMBLE' }

# for DIST
RAWDIR          = ../public_html/any-daemon/raw
DISTDIR         = ../public_html/any-daemon/source
LICENSE         = artistic

# for POD
FIRST_YEAR      = 2011
EMAIL           = perl@overmeer.net
WEBSITE         = http://perl.overmeer.net/
PODTAIL		= ../daemon-shared-podtail
__POSTAMBLE