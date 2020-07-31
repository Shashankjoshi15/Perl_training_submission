###Q.6_ "Post-It Note"

use strict;
use warnings;
#$\ = "\n";

print "Post-It Note --- Your personal sticky notes!!!
Press '1' to create a note
Press '2' to Open an exsisting note
Press '3' to delete a note\n";

my $input1 = <STDIN>;
chomp $input1;

if ($input1 eq '1')
{
	print "Enter the note name with extinction(.txt) : ";
	print '';
	my $file1 = <STDIN>;
	chomp $file1;
	print $file1;
	open FH, ">$file1" or die $!;

}
elsif($input1 eq '2') 
{
	print "Enter the note name with extinction(.txt) : ";
	print '';
	my $file2 = <STDIN>;
	chomp $file2;
	open FH, "<$file2" or die $!;
	while(my $temp = <FH>)
	{
		print $temp;
	}
	close FH;
	
	print "Add to your notes (y/n)";
	print '';
	my $input2 = <STDIN>;
	chomp $input2;

	if($input2 eq 'y' || $input2 eq 'Y')
	{
		chomp $file2;
		open FH, ">>$file2" or die $!;
		print ("Enter your notes :");
		my $str = <STDIN>;
		chomp $str;
		print  FH $str;
		print FH "\n";
		close FH;
	}

	else
	{
		print ("Closing the note\n ");
	}
}
elsif($input1 eq '3')
{
	print '';
	print "Enter the note name with extinction(.txt) : ";
	print '';
	my $file3 = <STDIN>;
	chomp $file3;
	unlink "$file3" ;
	print "Note is deleted";
}
else 
{
	print "Invalid Selection";
}