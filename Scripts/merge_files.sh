# Prompt the user to enter the first file name
echo -ne "\n Enter 1st file name:-"
read fname1

# Prompt the user to enter the second file name
echo -ne "\n Enter 2nd file name:-"
read fname2

# Prompt the user to enter data for the first file and save it
echo -ne "\n Enter data in $fname1 (Press ctrl + d to Save):-\n"
cat > $fname1

# Prompt the user to enter data for the second file and save it
echo -ne "\n Enter data in $fname2 (Press ctrl + d to Save):-\n"
cat > $fname2

# Append the content of the second file to the first file
cat >> $fname1 $fname2

# Prompt the user to enter the name for the third file
echo -ne "\n Enter filename3:-"
read fname3

# Rename the first file to the third file name
mv $fname1 $fname3

# Display the content of the third file
echo -ne "\n Data in $fname3 is:-\n"
cat $fname3
