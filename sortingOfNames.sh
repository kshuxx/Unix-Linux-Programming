echo -ne "\nEnter source file name:-"
read sname
echo -ne "\nEnter names in the file (Press ctrl + d to Save):-\n"
cat > $sname
sort $sname > sortedfile
echo -ne "\nContents of source file:-\n"
cat $sname
echo -ne "\nContents of sorted file:-\n"
cat sortedfile