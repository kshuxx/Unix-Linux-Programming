# Prompt the user to enter the source file name
echo -ne "\nEnter source file name:-"
read sname

# Prompt the user to enter names into the source file and save it
# The data entry is terminated by pressing ctrl + d
echo -ne "\nEnter names in the file (Press ctrl + d to Save):-\n"
cat > $sname

# Sort the contents of the source file and save the sorted output to a new file named 'sortedfile'
sort $sname > sortedfile

# Display the contents of the source file
echo -ne "\nContents of source file:-\n"
cat $sname

# Display the contents of the sorted file
echo -ne "\nContents of sorted file:-\n"
cat sortedfile
