use strict;
use warnings;

my @command = qw(ls -l .); # Command as an array of arguments

# Open a pipe to run the command, reading its STDOUT
if (open(my $fh, '-|', @command)) {
    while (my $line = <$fh>) {
        # Process each line as it's read
        print "Line: $line";
        # You can use regex here to parse the line, e.g.,
        # if ($line =~ /^drwx/) { ... }
    }
    close($fh) or die "Error closing pipe: $!";
} else {
    die "Can't open pipe from @command: $!";
}

