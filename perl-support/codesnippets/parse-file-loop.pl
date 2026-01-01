
my $filename = "";

# Open the file for reading (mode '<')
open(my $fh, '<:encoding(UTF-8)', $filename) or die "Could not open file '$filename' $!";

# Read each line from the filehandle ($fh) into the variable $line
while (my $line = <$fh>) {
    # Remove the newline character from the end of the line
    chomp $line;
    
    # Process the line here (e.g., print it, split it, run regex)
    print "Processing line: $line\n" if ( $DEBUGLEVEL > 3);
    if ( $line =~ /SCANNING/ ) {
        my @fields = split(/ /, $line);
        print "Channel Freq field is: $fields[1]\n" if ( $DEBUGLEVEL > 3);
        $lastChannel=$fields[1];
    }
    if ( $line =~ /PROGRAM/ ) {
        my @fields = split(/[: ]/, $line);
        print "Program field is: $fields[1]\n" if ( $DEBUGLEVEL > 3);
        print "TVChannel field is: $fields[3]\n" if ( $DEBUGLEVEL > 3);

        $channelProgram{$fields[3]}{Ch} = $lastChannel;
        $channelProgram{$fields[3]}{Prog} = $fields[1];
        $channelProgram{$fields[3]}{Name} = $fields[4];
    }

        
    
    # Example: split the line by a delimiter (e.g., comma)
    # my @fields = split(/,/, $line);
    # print "First field is: $fields[0]\n";
}

# Close the filehandle
close $fh;

