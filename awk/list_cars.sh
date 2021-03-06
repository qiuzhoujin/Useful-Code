trap 'rm -f $$.tem > /dev/null;echo $0 aborted.;exit 1' 1 2 15
echo -n "Price range (for example, 5000 7500):"
read lowrange hirange

echo '
                                Miles
Make        Model      Year     (000)      Price
---------------------------------------------------' > $$.tem
gawk < cars '
$5 >= '$lowrange' && $5 <= '$hirange' {
	if ($1 ~ /ply/)   $1 = "plymouth"
	if ($1 ~ /chev/)  $1 = "chevrolet"
	printf "%-10s %-8s    %2d   %5d     $ %8.2f\n", $1, $2, $3, $4, $5
}' | sort +5n >> $$.tem
cat $$.tem
rm $$.tem
#}' | sort -n +5 >> $$.tem
