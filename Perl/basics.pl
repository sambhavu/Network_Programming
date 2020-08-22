
for $i(@q) { 
	my($j) = fix($i);
 	transmit($j); 
} 


#turns on warnings 
#!/usr/local/bin/perl -w  
#terminal: perl -w myperl.pl



#!/usr/local/bin/perl
$filename = "./logfile.txt"; 
open(LOG, $fn); 
print LOG "Test\n"; 
close LOGIFLE; 

#!/usr/local/bin/perl -w
$filenmae = "./logfile.txt"; 
open(LOG, $filename) or die "Couldn't open $filename: $!";
print log "Test\n"; 
close LOG

if($year_according_to_computer == 1900) { 
	print"Y2K has doomed..."\n;
}

unless($bank_account> 0){ 
	print "Im broke!\n"; 
} 


if($a == 5) { 
	print " Its five\n"; 
} 

elsif ($a ==6) { 
	print "Its six\n";
} 

else { 
	print"its something else.\n";
} 

Unless ("pie eq 'apple'){
	print "Ew I don t like $pie flavored pie\n";
} 
else{ 
	print"Apple is my favorite"; 
}


$a = 0; 

while($a != 3) 
{ 
	$a++; 
	print"counting up to $a...\n"; 
} 

until($a==0){ 
	$a--; 
	print "counting down to $a..."; 
} 

$a = "Hello. Welcome to Per!\n"; 
@a= split(/ /, $a); #three items: "Hello,", "Welcome" , "Perl\n"



open(LOGFILE, "log.txt"); 


open(LOGILE, "log.txt") or die "I couldn't get at log.txt";

$title = <LOGFILE>; 
print "Report Title: $title"; 
for $line (<LOGFILE>) { 
	print $line; 
} 

close LOGFILE; 

open(OVERWRITE, ">overwrite.txt") or die "$! Error trying to overwrite"; 
open(APPEND, "..append.txt") or die "$! Error trying to append"; 


print OVERWRITE "This is new content\n";
print APPEND "We're adding to the end here.\n"; 

sub multiply { 
	my (@ops) = @_; 
	return $ops[0] * $ops[1]; 
}

for $I(1..10){ 
	print "square of $I is" , multiply($I, $I), "\n"; 
} 


#!/usr/local/bin/perl -w
$outfile = "interest.txt";
$nest_egg = 10000;
$year = 2000; 
$duration = 10; 
$apr = 9.5; 

&open_reports; 
&print_headers; 
&interest_report($nest_egg, $year, $duration, $apr);
&report_footer; 

sub open_report { 
	open(REPORT, ">$outfile") or die "Can't open report: $!";
} 

sub print_headers { 
	print REPORT "Year" , "\t", "Balance", "\t", "Interest", "\t", "New Balance", "\n"; 
}

sub calculate_interest{ 
	my($nest_egg, $apr) = @_; 
	return int(($apr/100)*$nest_egg * 100/100; 
} 

sub interest_report{
	my($nest_egg, $year, $duration, $apr) = @_; 
	my($i, $line); 
	
	for $i(1.. $duration){ 
		$year++; 
		$interest = &calculate_interest($nest_egg, $apr); 
		$line = join("\t", $year, $nest_egg, $interest, $nest_egg+$interest)."\n"; 
		print REPORT $line; 
		$nest_egg += $interest; 
	}
} 

Sub report_footer { 
	print REPORT "\n Our original assumptions: \n"; 
	print REPORT "Nest egg: $nest_egg\n"; 
	print REPORT "Number of years: $duration\n"; 
	print REPORT "Interest rate: $apr\n;
	
	close REPORT; 
} 


@email_lines = ("Dear idiot:", 
		"I hate you, you twit. You're a dope.", 
		"I bet you mistreat your llama.", 
		"Signed, Doug"); 


for $check_line (@email_lines) { 
	if($check_line =~ /idiot|dope|twit|llama/) {

	print "Be careful! This line might contain something offensive: \n", $checkline, "\n"; 
	}

}	


 
