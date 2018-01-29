use strict;
use warnings;

my @array = ('abc','b$ca','sa','ni','ma');
my $size =@array;

my @b;

#Read from one array and write into another

for (my $i =0; $i < $size ; $i ++){
	$b[$size - 1 - $i] = $array[$i]
}
print("Inital Array: @array\n");
print("Reversed Array: @b\n");
