if [ $# -lt 1 ]
then
	echo "Improper usage: $0 dir1 dir2 dir3 mydir"
	exit
fi

oldifs=`$IFS`
IFS=/

for args in $*
do
	if [ -d $args ]
	then
		cd $args
	else
		if [ -f $args ];then
			echo "$args is a file"
			exit
		else
			mkdir $args
			cd $args
		fi
	fi
done
IFS=$oldifs

