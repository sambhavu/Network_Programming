#!/usr/bin/perl
@words = ("camel", "llama" , "oyster"); 
print "What is your name? "; 
$name = <STDIN>;
chop($name); 

if($name eq "Randal") { 
  print "Hello, Randal! how good of you to be here!\n";
  } 
  else{ 
    print "Hello, $name! \n";#ordinary greeting
    print "What is the secret word? ";
    $guess = <STDIN>; 
    
    chop($guess); 
    $i = 0; #try this word first 
    $correct = "maybe"; 
    while ($correct eq "maybe") { 
      if($words[$i] eq $guess) { 
        $correct = "yes"; 
        } 
        elsif ($i < 2) {
          $i = $i +1; 
       } 
       else{ 
        print "Wrong, try again. What is the secret word?"; 
        $guess  = <STDIN>; 
        chop($guess); 
        $i = 0; 
     } 
     
 }
} 


