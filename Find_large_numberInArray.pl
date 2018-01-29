use strict;
use warnings;

my @Array = (250,299,187,5641,1000,1,2000,5641);
my @sorted_array = sort {$a <=> $b} @Array;
my $Arraysize =@Array;
my $N = $ARGV[0];
my $large_num =0;

#Print Statements
print("Array: @Array\n");
#print("Length of Inital Array: $Arraysize\n");
#print("The Sorted Array is: @sorted_array\n");

# Find the largest number in Array
if ($N <= $Arraysize) 
	{
	print("The largest number in Array is $sorted_array[$Arraysize - $N ]\n");
	$large_num = $sorted_array[$Arraysize - $N ];
	}

else {
	print("The number should be less than $Arraysize\n");
	}
	
	
# Find the index of the larger number

for (my $i = 0; $i < $Arraysize ; $i++){
	if ($Array[$i] == $large_num){
		print("Printing the index of Large number: $i\n");
		}
	}	
		
