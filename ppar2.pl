#!/usr/bin/perl -w
use strict;
use warnings;

use Tie::IxHash;

# Define 
my $inputkey;
my $key;
my $inputvalue;
my $value;


# Step 1 of 3: Initialize the hash and tie it (ie to preserve insertion order)
tie my %hash, "Tie::IxHash" or die "could not tie %hash";

$hash{plnorbper} = 'null';
$hash{plnorbpererr1} = 'null';
$hash{plnorbpererr2} = 'null';
$hash{plnorbperlim} = 'null';
$hash{plnorbsmax} = 'null';
$hash{plnorbsmaxerr1} = 'null';
$hash{plnorbsmaxerr2} = 'null';
$hash{plnorbsmaxlim} = 'null';
$hash{plnorbincl} = 'null';
$hash{plnorbinclerr1} = 'null';
$hash{plnorbinclerr2} = 'null';
$hash{plnorbincllim} = 'null';
$hash{plnorbtper} = 'null';
$hash{plnorbtpererr1} = 'null';
$hash{plnorbtpererr2} = 'null';
$hash{plnorbtperlim} = 'null';
$hash{plnorbeccen} = 'null';
$hash{plnorbeccenerr1} = 'null';
$hash{plnorbeccenerr2} = 'null';
$hash{plnorbeccenlim} = 'null';
$hash{plnorblper} = 'null';
$hash{plnorblpererr1} = 'null';
$hash{plnorblpererr2} = 'null';
$hash{plnorblperlim} = 'null';
$hash{plnorbdate} = 'null';
$hash{plnorbmethod} = 'null';
$hash{plnrvamp} = 'null';
$hash{plnrvamperr1} = 'null';
$hash{plnrvamperr2} = 'null';
$hash{plnrvamplim} = 'null';
$hash{plnmsinij} = 'null';
$hash{plnmsinijerr1} = 'null';
$hash{plnmsinijerr2} = 'null';
$hash{plnmsinie} = 'null';
$hash{plnmsinieerr1} = 'null';
$hash{plnmsinieerr2} = 'null';
$hash{plnmsinilim} = 'null';
$hash{plnmassj} = 'null';
$hash{plnmassjerr1} = 'null';
$hash{plnmassjerr2} = 'null';
$hash{plnmasse} = 'null';
$hash{plnmasseerr1} = 'null';
$hash{plnmasseerr2} = 'null';
$hash{plnmasslim} = 'null';
$hash{plnradj} = 'null';
$hash{plnradjerr1} = 'null';
$hash{plnradjerr2} = 'null';
$hash{plnrade} = 'null';
$hash{plnradeerr1} = 'null';
$hash{plnradeerr2} = 'null';
$hash{plnrads} = 'null';
$hash{plnradserr1} = 'null';
$hash{plnradserr2} = 'null';
$hash{plnradlim} = 'null';
$hash{plndens} = 'null';
$hash{plndenserr1} = 'null';
$hash{plndenserr2} = 'null';
$hash{plndenslim} = 'null';
$hash{plneqt} = 'null';
$hash{plneqterr1} = 'null';
$hash{plneqterr2} = 'null';
$hash{plneqtlim} = 'null';
$hash{plntrandep} = 'null';
$hash{plntrandeperr1} = 'null';
$hash{plntrandeperr2} = 'null';
$hash{plntrandeplim} = 'null';
$hash{plntrandurd} = 'null';
$hash{plntrandurderr1} = 'null';
$hash{plntrandurderr2} = 'null';
$hash{plntrandurh} = 'null';
$hash{plntrandurherr1} = 'null';
$hash{plntrandurherr2} = 'null';
$hash{plntrandurlim} = 'null';
$hash{plntranmid} = 'null';
$hash{plntranmiderr1} = 'null';
$hash{plntranmiderr2} = 'null';
$hash{plntranmidlim} = 'null';
$hash{plnimppar} = 'null';
$hash{plnimpparerr1} = 'null';
$hash{plnimpparerr2} = 'null';
$hash{plnimpparlim} = 'null';
$hash{plnoccdep} = 'null';
$hash{plnoccdeperr1} = 'null';
$hash{plnoccdeperr2} = 'null';
$hash{plnoccdeplim} = 'null';
$hash{plnratdor} = 'null';
$hash{plnratdorerr1} = 'null';
$hash{plnratdorerr2} = 'null';
$hash{plnratdorlim} = 'null';
$hash{plnratror} = 'null';
$hash{plnratrorerr1} = 'null';
$hash{plnratrorerr2} = 'null';
$hash{plnratrorlim} = 'null';
$hash{plnblend} = 'null';
$hash{plnrefid} = 'null';


# Step 2 of 3: Prompt the user to enter a key and corresponding value 
# (do this in an infinite WHILE-loop; type 'quit' to get out of loop)
while (1) {
    print 'Enter key and value pair (separated by a space); enter \'quit\' to exit) =>';
    print "\n";
    my $str = <STDIN>;
    chomp $str;
    ( $inputkey, $inputvalue ) = split / /, $str;
    if ($inputkey eq 'quit') {
        last;
    }

# Error checking.  Make sure the user-input key (inputkey) 
# matches parameter keys in the hash function.  Use WHILE-loop 
# to iterate through the entire hash function. 
    my $match = 0; # this variable flag tracks the matching status
                   # 0 == no match ; 1 == match 
    while ( ($key, $value) = each(%hash) ) {
#       if ( $inputkey =~ $key  ) { # NO!! This does not do an exact match.
        if ( $inputkey =~ /^$key$/ ) {
            $hash{ $inputkey } = $inputvalue;
            $match = 1; 
        }
    }
    if ( $match == 0 ) {
        print "No match found for input key.\n";
        print 'User input key: ', $inputkey, "\n";
    }
} # end of infinite outer WHILE-loop


# Step 3 of 3: Print the hash array out to a file in the correct format 
print "EDMT|planet|<replace with OBJECTID>|add|";
while ( my ($key, $value) = each(%hash) ) {
    print "$key $value|";
}
print "\n"; # need to use this so the command prompt displays correctly 

exit 0

