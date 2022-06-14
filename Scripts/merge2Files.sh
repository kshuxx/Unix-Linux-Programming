echo -ne "\n Enter 1st file name:-"
read fname1
echo -ne "\n Enter 2nd file name:-"
read fname2
echo -ne "\n Enter data in $fname1(Press ctrl + d to Save):-\n"
cat > $fname1
echo -ne "\n Enter data in $fname2(Press ctrl + d to Save):-\n"
cat > $fname2
cat >> $fname1 $fname2
echo -ne "\n Enter filename3:-"
read fname3
mv $fname1 $fname3
echo -ne "\n Data in $fname3 is:-\n"
cat $fname3