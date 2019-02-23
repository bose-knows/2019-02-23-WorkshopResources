# $1, $2, and $3 are options for cut columns
# $4 is number of lines for head
# $5 is sort options (e.g. n or nr)

echo "columns for cut: $1 $2 $3"
echo "number for head: $4"
echo "sort option: $5"

# This loop runs on files with names starting with U-Z
for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile  # Output filename to screen
    cut -f "$1","$2","$3"  $gapminderfile | sort -"$5" | head -"$4"
done
