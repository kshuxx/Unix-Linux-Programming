choice=y
while test choice=y
do echo -ne "\n<.......Menu.......>
To list files enter(l)
For present working directory enter(p)
For process status enter(ps)
For date enter(d)
For exit enter(e)"

echo -ne "\n Enter your choice:- "
read choice
case $choice in
l) echo -ne "\n Enter Path:- "
read Path
ls -al $path
;;
p) echo -ne "\n Your present working directory is:- "
pwd
;;
ps) echo -ne "\n Your process details are:-\n"
ps
;;
d) echo -ne "\n Date is:- "
date
;;
e) exit
;;
*) echo -ne "\n Wrong choice try again"
esac 
done