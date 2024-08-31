# Initialize the choice variable
choice=y

# Infinite loop to keep the script running until the user chooses to exit
while test $choice = y
do
    # Print the menu options
    echo -ne "\n<.......Menu.......>
To list files enter(l)
For present working directory enter(p)
For process status enter(ps)
For date enter(d)
For exit enter(e)"

    # Prompt the user to enter their choice
    echo -ne "\n Enter your choice:- "
    read choice

    # Process the user's choice using a case statement
    case $choice in
        l)
            # Option l: List files in the specified directory
            echo -ne "\n Enter Path:- "
            read Path
            ls -al $Path  # List all files and directories in the specified path with detailed information
            ;;
        p)
            # Option p: Display the present working directory
            echo -ne "\n Your present working directory is:- "
            pwd  # Print the current working directory
            ;;
        ps)
            # Option ps: Display the process status
            echo -ne "\n Your process details are:-\n"
            ps  # Display the current processes
            ;;
        d)
            # Option d: Display the current date and time
            echo -ne "\n Date is:- "
            date  # Print the current date and time
            ;;
        e)
            # Option e: Exit the script
            exit
            ;;
        *)
            # Handle invalid choices
            echo -ne "\n Wrong choice try again"
            ;;
    esac
done
