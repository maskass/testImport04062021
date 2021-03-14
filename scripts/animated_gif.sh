
## Imagemagick is necessary
if [ ! $(which convert) ] ; then 
	echo "imagemagick not install. Exiting." ; 
	exit 1
fi

for mom in {10..200..1} ; do
	./run.sh $mom.0 40.078 20.0 2> /dev/null | awk '{if($1>0)print}' > /tmp/file 
	# awk -v m=$mom '{if ($1>0) print m,$0}' /tmp/file > $outfile
	python3 scripts/plotsimple.py /tmp/file $mom
	echo "plab momentum "$mom
done

echo "Images created, now creating the animation"

convert  -delay 5 -loop 0   $(ls -1 mom*.png | sort -V)  animationMom.gif

echo "Done, cleaning..."

rm -v mom*.png 

echo "...done."