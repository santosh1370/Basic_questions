use strict;
use warnings;

#Quater=25 , dim=10, nickel=5, Penny =1
#x =40 cents 
#40 / 25 = 15 = remainder -- 1 coin 
#15 /10 = 5 remainder -- 1 coin 
#5 /5 = 0 remainder --- 1 coin
#total = 1 + 1 + 1 = 3 coins 


my $x = $ARGV[0] *100;
my $r1 =0;
my $r2=0;
my $r3 =0;
my $r4 =0;
my $q1=0;
my $q2=0;
my $q3=0;



if ($x >= 25)
	{
	$r1 = $x % 25;
	$q1 = ($x - $r1)/25;
	#print("In IF statement\n");
	#print("$r1, $q1\n");
	}

if ( ($r1 >= 10  && $r1< 25 )|| $x <=10 )
	{
	
	if ($r1 >= 10  && $r1< 25 ){
		$r2 = ($r1) % 10;
		$q2 = ($r1 - $r2 )/10;
		}
	else {	
		$r2 = ($x) % 10;
		$q2 = ($x - $r2 )/10;
		}
	#print("In First ELSEIF statement\n");
	#print("$r2, $q2\n");
	}

if ( ($r1 >= 5 && $r1 < 10)|| ($r2 >= 5 && $r2 < 10) || $x <= 5 )
	{
	
	if ($r1 >= 5 && $r1 < 10){
		$r3 = $r1 % 5;
		$q3 = ($r1 -$r3 )/5;
		}
	elsif ($r2 >= 5 && $r2 < 10){
		$r3 = $r2 % 5;
		$q3 = ($r2 -$r3 )/5;
		}
	else {	
	
		$r3 = $x % 5;
		$q3 = ($x -$r3 )/5;
		}
	#print("In Second ELSEIF statement\n");
	#print("$r3, $q3\n");
	}

if ( ($x < 5 && $x >=1) || ($r1 < 5 && $r1 >=1) || ($r2 < 5 && $r2 >=1) || ($r3 < 5 && $r3 >=1) )
	{
	if ($r1 < 5 && $r1 >=1) {
		
		$r4 = $r1;
		}
	elsif ($r2 < 5 && $r2 >=1) {
		
		$r4 = $r2;
		}
	
	elsif ($r3 < 5 && $r3 >=1) {
		
		$r4 = $r3;
		}
	elsif ($x < 5 && $x >=1) {
		
		$r4 = $x;
		}
	#print("In ELSE statement\n");
	#print("$r3\n");
	#print("$r2\n");
	#print("$r1\n");
	#print("$x\n");
	}

my $sum = $q1 + $q2 + $q3 + $r4;
print("Number of Coins: $sum \n"); 
