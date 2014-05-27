#!/usr/bin/perl -w
use strict;
use warnings;
use feature qw(switch say);

use Tie::IxHash;

# Define 
my $inputkey;
my $key;
my $inputvalue;
my $value;
my $inputmethod;
my $method;


# Step 1 of 3: Initialize the hash and tie it (ie to preserve insertion order)
# note to self: awk '{printf "$hash{%s} = \x27null\x27;\n", $2}' exop_lit_ppar.tbl
tie my %hash, "Tie::IxHash" or die "could not tie %hash";

$hash{plnorbper} = 'null';
$hash{plnorbpererr1} = 'null';
$hash{plnorbpererr2} = 'null';
$hash{plnorbperlim} = 'null';
$hash{plnorbperformat} = 'null';
$hash{plnorbperstr} = 'null';
$hash{plnorbperdef} = 'null';
$hash{plnorbsmax} = 'null';
$hash{plnorbsmaxerr1} = 'null';
$hash{plnorbsmaxerr2} = 'null';
$hash{plnorbsmaxlim} = 'null';
$hash{plnorbsmaxformat} = 'null';
$hash{plnorbsmaxstr} = 'null';
$hash{plnorbsmaxdef} = 'null';
$hash{plnorbincl} = 'null';
$hash{plnorbinclerr1} = 'null';
$hash{plnorbinclerr2} = 'null';
$hash{plnorbincllim} = 'null';
$hash{plnorbinclformat} = 'null';
$hash{plnorbinclstr} = 'null';
$hash{plnorbincldef} = 'null';
$hash{plnorbtper} = 'null';
$hash{plnorbtpererr1} = 'null';
$hash{plnorbtpererr2} = 'null';
$hash{plnorbtperlim} = 'null';
$hash{plnorbtperformat} = 'null';
$hash{plnorbtperstr} = 'null';
$hash{plnorbtperdef} = 'null';
$hash{plnorbeccen} = 'null';
$hash{plnorbeccenerr1} = 'null';
$hash{plnorbeccenerr2} = 'null';
$hash{plnorbeccenlim} = 'null';
$hash{plnorbeccenformat} = 'null';
$hash{plnorbeccenstr} = 'null';
$hash{plnorbeccendef} = 'null';
$hash{plnorblper} = 'null';
$hash{plnorblpererr1} = 'null';
$hash{plnorblpererr2} = 'null';
$hash{plnorblperlim} = 'null';
$hash{plnorblperformat} = 'null';
$hash{plnorblperstr} = 'null';
$hash{plnorblperdef} = 'null';
$hash{plnorbdate} = 'null';
$hash{plnorbmethod} = 'null';
$hash{plnrvamp} = 'null';
$hash{plnrvamperr1} = 'null';
$hash{plnrvamperr2} = 'null';
$hash{plnrvamplim} = 'null';
$hash{plnrvampformat} = 'null';
$hash{plnrvampstr} = 'null';
$hash{plnrvampdef} = 'null';
$hash{plnmsinij} = 'null';
$hash{plnmsinijerr1} = 'null';
$hash{plnmsinijerr2} = 'null';
$hash{plnmsinijformat} = 'null';
$hash{plnmsinijstr} = 'null';
$hash{plnmsinie} = 'null';
$hash{plnmsinieerr1} = 'null';
$hash{plnmsinieerr2} = 'null';
$hash{plnmsinieformat} = 'null';
$hash{plnmsiniestr} = 'null';
$hash{plnmsinilim} = 'null';
$hash{plnmsinidef} = 'null';
$hash{plnmassj} = 'null';
$hash{plnmassjerr1} = 'null';
$hash{plnmassjerr2} = 'null';
$hash{plnmassjformat} = 'null';
$hash{plnmassjstr} = 'null';
$hash{plnmasse} = 'null';
$hash{plnmasseerr1} = 'null';
$hash{plnmasseerr2} = 'null';
$hash{plnmasseformat} = 'null';
$hash{plnmassestr} = 'null';
$hash{plnmasslim} = 'null';
$hash{plnmassdef} = 'null';
$hash{plnradj} = 'null';
$hash{plnradjerr1} = 'null';
$hash{plnradjerr2} = 'null';
$hash{plnradjformat} = 'null';
$hash{plnradjstr} = 'null';
$hash{plnrade} = 'null';
$hash{plnradeerr1} = 'null';
$hash{plnradeerr2} = 'null';
$hash{plnradeformat} = 'null';
$hash{plnradestr} = 'null';
$hash{plnrads} = 'null';
$hash{plnradserr1} = 'null';
$hash{plnradserr2} = 'null';
$hash{plnradsformat} = 'null';
$hash{plnradsstr} = 'null';
$hash{plnradlim} = 'null';
$hash{plnraddef} = 'null';
$hash{plndens} = 'null';
$hash{plndenserr1} = 'null';
$hash{plndenserr2} = 'null';
$hash{plndenslim} = 'null';
$hash{plndensformat} = 'null';
$hash{plndensstr} = 'null';
$hash{plndensdef} = 'null';
$hash{plneqt} = 'null';
$hash{plneqterr1} = 'null';
$hash{plneqterr2} = 'null';
$hash{plneqtlim} = 'null';
$hash{plneqtformat} = 'null';
$hash{plneqtstr} = 'null';
$hash{plneqtdef} = 'null';
$hash{plntrandep} = 'null';
$hash{plntrandeperr1} = 'null';
$hash{plntrandeperr2} = 'null';
$hash{plntrandeplim} = 'null';
$hash{plntrandepformat} = 'null';
$hash{plntrandepstr} = 'null';
$hash{plntrandepdef} = 'null';
$hash{plntrandurd} = 'null';
$hash{plntrandurderr1} = 'null';
$hash{plntrandurderr2} = 'null';
$hash{plntrandurdformat} = 'null';
$hash{plntrandurdstr} = 'null';
$hash{plntrandurh} = 'null';
$hash{plntrandurherr1} = 'null';
$hash{plntrandurherr2} = 'null';
$hash{plntrandurhformat} = 'null';
$hash{plntrandurhstr} = 'null';
$hash{plntrandurlim} = 'null';
$hash{plntrandurdef} = 'null';
$hash{plntranmid} = 'null';
$hash{plntranmiderr1} = 'null';
$hash{plntranmiderr2} = 'null';
$hash{plntranmidlim} = 'null';
$hash{plntranmidformat} = 'null';
$hash{plntranmidstr} = 'null';
$hash{plntranmiddef} = 'null';
$hash{plnimppar} = 'null';
$hash{plnimpparerr1} = 'null';
$hash{plnimpparerr2} = 'null';
$hash{plnimpparlim} = 'null';
$hash{plnimpparformat} = 'null';
$hash{plnimpparstr} = 'null';
$hash{plnimppardef} = 'null';
$hash{plnoccdep} = 'null';
$hash{plnoccdeperr1} = 'null';
$hash{plnoccdeperr2} = 'null';
$hash{plnoccdeplim} = 'null';
$hash{plnoccdepformat} = 'null';
$hash{plnoccdepstr} = 'null';
$hash{plnoccdepdef} = 'null';
$hash{plnratdor} = 'null';
$hash{plnratdorerr1} = 'null';
$hash{plnratdorerr2} = 'null';
$hash{plnratdorlim} = 'null';
$hash{plnratdorformat} = 'null';
$hash{plnratdorstr} = 'null';
$hash{plnratdordef} = 'null';
$hash{plnratror} = 'null';
$hash{plnratrorerr1} = 'null';
$hash{plnratrorerr2} = 'null';
$hash{plnratrorlim} = 'null';
$hash{plnratrorformat} = 'null';
$hash{plnratrorstr} = 'null';
$hash{plnratrordef} = 'null';
$hash{plnblend} = 'null';
$hash{plnrefid} = 'null';


# Step 2a of 3: Prompt the user to enter Object ID
print 'Enter Object ID: ';
my $objectid = <STDIN>;
chomp $objectid;


# Step 2b of 3: Prompt the user to enter short description of updated planet parameters
print 'Enter planet parameter description: ';
my $description = <STDIN>;
chomp $description;


# Step 2c of 3: Prompt the user to select the input method 
print "Select the input method (a-d): \n";
print "a) add_def    \n";
print "b) add        \n";
print "c) update_def \n";
print "d) update     \n";
$inputmethod = <STDIN>;
chomp $inputmethod;
given ($inputmethod) { 
    when ('a') {$method = 'add_def'   } 
    when ('b') {$method = 'add'       } 
    when ('c') {$method = 'update_def'} 
    when ('d') {$method = 'update'    } 
    default    {die "\n\nNo matching case\n" }
}


# Step 2d of 3: Prompt the user to enter a key and corresponding value 
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
        if ( $inputkey =~ /^$key$/ ) { # YES. This will do an exact match.
            $hash{ $inputkey } = $inputvalue;
            $match = 1; 
        }
    } # end of inner WHILE-loop 
    if ( $match == 0 ) {
        print "\n";
        print "No match found for input key: $inputkey\n";
        print "\n";
    }
} # end of infinite outer WHILE-loop


# Step 3 of 3: Print the hash function out to a file in the correct format 

# Step 3a of 3: Parse time and date 
# sec,     # seconds of minutes from 0 to 61
# min,     # minutes of hour from 0 to 59
# hour,    # hours of day from 0 to 24
# mday,    # day of month from 1 to 31
# mon,     # month of year from 0 to 11
# year,    # year since 1900
# wday,    # days since sunday
# yday,    # days since January 1st
# isdst    # hours of daylight savings time
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

# Step 3b of 3: Create output filename from time and date elements 
# note to self: use sprintf, not printf. otherwise using printf will 
# return 1 because the 1 is the true return value from printf which 
# gets assigned to $filename after printf has printed the string. 
my $filename  = sprintf ("ppar_%04d-%02d-%02d-%02d-%02d-%02d.edm", $year+1900,$mon+1,$mday,$hour,$min,$sec);

# Step 3c of 3: Create file handle for the output file 
open (my $fh, '>', $filename) or die "Could not open file '$filename' $!\n";

# Step 3d of 3: Print header information to screen 
print   "USER:            raymond\n";
print   "BUILD:           6.1\n";
printf ("DESCRIPTION:     %s\n", $description);
print   "FILETYPE:        edm\n";
printf ("FILENAME:        %s\n", $filename);
printf ("DATE:            %04d-%02d-%02d %02d:%02d:%02d\n", $year+1900,$mon+1,$mday,$hour,$min,$sec);

# Step 3e of 3: Print header information to file 
print  $fh  "USER:            raymond\n";
print  $fh  "BUILD:           6.1\n";
printf $fh ("DESCRIPTION:     %s\n", $description);
print  $fh  "FILETYPE:        edm\n";
printf $fh ("FILENAME:        %s\n", $filename);
printf $fh ("DATE:            %04d-%02d-%02d %02d:%02d:%02d\n", $year+1900,$mon+1,$mday,$hour,$min,$sec);

# Step 3f of 3: Now output all the planet parameters 
print "EDMT|planet|$objectid|$method|";
print $fh "EDMT|planet|$objectid|$method|";
while ( my ($key, $value) = each(%hash) ) {
    print "$key $value|";
    print $fh "$key $value|";
}
print "\n"; # need to use this so the command prompt displays correctly 

exit 0

