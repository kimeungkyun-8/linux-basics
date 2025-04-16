#!/bin/sh
file1=0
file2=0
for item in *
do
	if [ -f "$item" ]
	 then
	 file1=$((file1+1))
	elif [ -d "$item" ] 
	then
	file2=$((file2+1))
	else
	continue
fi	
done
echo '파일 수:' "$file1"
echo '디렉터리 수:' "$file2"
exit 0
