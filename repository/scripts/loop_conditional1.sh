# $1 is field to cut
# $2 specifies head or tail

for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile 
    if [ "$2" = "high" ] # test whether 2nd argument is "high"
    then
            cut -f "$1" $gapminderfile | sort -n | tail -1
    else
            cut -f "$1" $gapminderfile | sort -n | head -1
    fi # Don't forget to end condition
done
