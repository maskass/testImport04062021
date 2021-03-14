# create a file with the scan result

outfile=/tmp/output.dat

rm $outfile 2>/dev/null 

for mom in {50..100..10} ; do
	./run.sh $mom.0 40.078 20.0 > /tmp/file 2>/dev/null
	awk -v m=$mom '{print m,$0}' /tmp/file >> $outfile
	echo "plab momentum "$mom
done

