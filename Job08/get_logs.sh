if [ ! -d "Backup" ];then
mkdir Backup
fi
last $1 > test.txt
nbrl=$(cat test.txt | wc -l)
deux=$(( $nbrl - 1 ))
sed "${deux},${nbrl}d" test.txt > test2.txt
date=`date +"%d-%m-%Y-%H:%M"`
logg=number_connection_$date 
echo "$(wc -l test2.txt | cut -d ' ' -f 1)" > $logg
rm test.txt
rm test2.txt
mv number_connection_$date Backup
tar -czf /Documents/shell-exe/Job08/Backup/number_connection_$date.gz ~/Documents/shell-exe/Job08/Backup
