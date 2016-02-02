#!/bin/bash
#  EmirAraujo
#  

CPP_FILES="*.cpp"

	rm -r *.o Cpp_temp

for file in `echo $CPP_FILES` 
do
  echo "$file "
  g++ -c $file
	echo "$file compilado"
	echo "-------------------------"
done
	echo "    Compilando main con   "
	echo "`ls *.o`"
	g++ -o Cpp_temp `ls *.o`
echo "----------run------------"
	./Cpp_temp 

exit 0
