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
# note to self: awk '{printf "$hash{%s} = \x27null\x27;\n", $2}' exop_lit_ppar.tbl
tie my %hash, "Tie::IxHash" or die "could not tie %hash";

$hash{plnletter} = 'null';
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
$hash{plntsystemref} = 'null';
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
$hash{plnmsinijlim} = 'null';
$hash{plnmsinie} = 'null';
$hash{plnmsinieerr1} = 'null';
$hash{plnmsinieerr2} = 'null';
$hash{plnmsinielim} = 'null';
$hash{plnmassj} = 'null';
$hash{plnmassjerr1} = 'null';
$hash{plnmassjerr2} = 'null';
$hash{plnmassjlim} = 'null';
$hash{plnmasse} = 'null';
$hash{plnmasseerr1} = 'null';
$hash{plnmasseerr2} = 'null';
$hash{plnmasselim} = 'null';
$hash{plnradj} = 'null';
$hash{plnradjerr1} = 'null';
$hash{plnradjerr2} = 'null';
$hash{plnradjlim} = 'null';
$hash{plnrade} = 'null';
$hash{plnradeerr1} = 'null';
$hash{plnradeerr2} = 'null';
$hash{plnradelim} = 'null';
$hash{plnrads} = 'null';
$hash{plnradserr1} = 'null';
$hash{plnradserr2} = 'null';
$hash{plnradslim} = 'null';
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
$hash{plntrandurdlim} = 'null';
$hash{plntrandurh} = 'null';
$hash{plntrandurherr1} = 'null';
$hash{plntrandurherr2} = 'null';
$hash{plntrandurhlim} = 'null';
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
$hash{plninsol} = 'null';
$hash{plninsolerr1} = 'null';
$hash{plninsolerr2} = 'null';
$hash{plninsollim} = 'null';
$hash{plnblend} = 'null';
$hash{plnrefid} = 'null';


# Step 2a of 3: Prompt the user to enter Object ID
print 'Enter Object ID: ';
my $objectid = <STDIN>;
chomp $objectid;


# Step 2b of 3: Prompt the user to enter a filename
print 'Create name of output file: ';
my $filename = <STDIN>;
chomp $filename;


# Step 2c of 3: Prompt the user to enter planet letter 
print 'Enter planet letter ( b / c / d / .... ): ';
my $inputletter = <STDIN>;
chomp $inputletter;
$hash{'plnletter'} = $inputletter;


# Step 2d of 3: Prompt the user to enter an entry method 
print 'Enter entry method ( add / update / add_def / update_def ): ';
my $addupdate = <STDIN>;
chomp $addupdate;


# Step 2c of 3: Prompt the user to enter short description of updated planet parameters
# print 'Enter planet parameter description: ';
# my $description = <STDIN>;
# chomp $description;


# Step 2e of 3: Prompt the user to enter a key and corresponding value 
# (do this in an infinite WHILE-loop; type 'quit' to get out of loop)
while (1) {
    print 'Enter key and value pair (separated by a space); enter \'quit\' to exit) => ';
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
# my $filename  = sprintf ("ppar_%04d-%02d-%02d-%02d-%02d-%02d.edm", $year+1900,$mon+1,$mday,$hour,$min,$sec);

# Step 3c of 3: Create file handle for the output file 
open (my $fh, '>', $filename) or die "Could not open file '$filename' $!\n";

# Step 3d of 3: Print header information to screen 
print   "USER:            raymond\n";
print   "BUILD:           6.3\n";
printf  "DESCRIPTION:     Stellar/Planetary Parameters Additions and Updates\n";
print   "FILETYPE:        edm\n";
printf ("FILENAME:        %s\n", $filename);
printf ("DATE:            %04d-%02d-%02d %02d:%02d:%02d\n", $year+1900,$mon+1,$mday,$hour,$min,$sec);
printf  "#                                            \n";
printf  "# Addition of planet parameter values\n";
printf  "#                                            \n";

# Step 3e of 3: Print header information to file 
print  $fh  "USER:            raymond\n";
print  $fh  "BUILD:           6.3\n";
printf $fh  "DESCRIPTION:     Stellar/Planetary Parameters Additions and Updates\n";
print  $fh  "FILETYPE:        edm\n";
printf $fh ("FILENAME:        %s\n", $filename);
printf $fh ("DATE:            %04d-%02d-%02d %02d:%02d:%02d\n", $year+1900,$mon+1,$mday,$hour,$min,$sec);
printf $fh  "#                                    \n";
printf $fh  "# Addition of planet parameter values\n";
printf $fh  "#                                    \n";

# Step 3f of 3: Special algorithm check. If certain specific
# parameters are initialized (ie not null), then calculate
# additional values for other related parameters.
# (UPDATE -- 3/26/2015) Deleted all the Special Algorithm 
# Checks because EDM Tool Build 6.2 will now automatically 
# calculate the masses and radii


my @messageArray; # this array will hold all the messages indicating which 
                  # parameter fields were auto-filled. 

# Special autofill algorithm.  The limit flag for the corresponding parameter 
# field in array @myNames will be auto-filled with "0" if that parameter field 
# is not null. 
my @myNames = ('plnmsinij', 'plnmsinie', 'plnmassj', 'plnmasse', 'plnradj', 'plnrade', 'plnrads', 'plnorbsmax', 'plnorbper', 'plnorbtper', 'plnorblper', 'plnorbeccen', 'plnrvamp', 'plntrandurd', 'plntrandurh', 'plninsol');
foreach (@myNames) 
{
# This IF-block will check 1.) that the parameter field has been filled by a real 
# number (e.g. no longer null), and 2.) whether or not the corresponding limit flag 
# is still null.  If the limit flag is still null, then that means I forgot to set 
# it and the algorithm will automatically set it for me.  
  if ( $hash{ $_ } !~ /^null$/ && $hash{ $_.'lim' } =~ /^null$/ )
  {
    $hash{ $_.'lim' } = 0;
    my $tempname = "$_".'lim';
#    print "\n$tempname was autofilled with 0\n";
    push( @messageArray, "$tempname was autofilled with 0" );
  }
} 

# Special autofill algorithm 3: Autofill plnblend  
if ( $hash{ plnblend } =~ /^null$/ )
{
  $hash{ plnblend } = 0;
#  print "\nplnblend was autofilled with 0\n";
  push( @messageArray, "plnblend was autofilled with 0" );
}

# Special autofill algorithm 4: Autofill plnorbmethod
if ( $hash{ plnorbmethod } =~ /^null$/ )
{
  print "\n\nWARNING! plnorbmethod is null.\nEnter plnorbmethod and corresponding value => ";
  my $str = <STDIN>;
  chomp $str;
  ( $inputkey, $inputvalue ) = split / /, $str;
  $hash{ plnorbmethod } = $inputvalue;
#  print "\nplnorbmethod was autofilled with rv\n";
  push( @messageArray, "plnorbmethod was autofilled with $inputvalue" );
}


# Special autofill algorithm 5: Autofill plntsystemref 
if ( $hash{ plntsystemref } =~ /^null$/ )
{
  print "\n\nWARNING! plntsystemref is null.\nEnter plntsystemref and corresponding value => ";
  my $str = <STDIN>;
  chomp $str;
   ( $inputkey, $inputvalue ) = split / /, $str;
  $hash{ plntsystemref } = $inputvalue;
#  print "\nplnorbmethod was autofilled with rv\n";
  push( @messageArray, "plntsystemref was autofilled with $inputvalue" );
}


# Step 3g of 3: Now output all the planet parameters 
print     "EDMT|planet|$objectid|$addupdate|";
print $fh "EDMT|planet|$objectid|$addupdate|";
while ( my ($key, $value) = each(%hash) ) {
    print     "$key $value|";
    print $fh "$key $value|";
}
print     "\n"; # need to use this so the command prompt displays correctly 
print $fh "\n"; # need to use this so the command prompt displays correctly


# Step 3h of 3: Print all the messages for the fields that were autofilled. 
print "\n\n";
for ( my $i = 0 ; $i <= $#messageArray ; $i++ )
{
  print "$messageArray[$i]\n";
}
print "\n\n";

exit 0
