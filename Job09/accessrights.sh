cat Shell_Userlist.csv | awk -F"," '{print $5}' > test.txt
cat Shell_Userlist.csv | awk -F"," '{print $3 " " $2}' > test1.txt
sed '1d' test.txt > test2.txt
sed '1d' test1.txt > test3.txt
rm test.txt
rm test1.txt
nombre=wc -l test2.txt | cut -d ' ' -f 1
for i range {1..$nombre}
1=i
Role=sed -n $1p test2.txt
do
	if [ $Role = "Admin" ];then
	utilisateur=sed -n $1p test3.txt
	sudo usermod -ag sudo $utilisateur 
	fi 
done
