#!bin/bash

ask_domain () {
    echo -e "\nPlease type a domain:"

    read domainName
}


bring_menu () {
    echo -e "\nChoose an option:\n"
    echo "1 - whois"
    echo "2 - dig"
    echo "3 - host"
    echo "4 - nslookup"
    echo "0 - exit"
    echo "5 - Choose another domain"

    read OPTION

    operations
}

ask_to_repeat () {
    echo -e "\nWould you like to perform another operation (y/n)?"

    read choice

    case "$choice" in 

   y|Y|yes|Yes)
       ask_domain
       bring_menu
       ;;
    
   n|N|no|No)
       echo "Thank you!" 
       exit 0
        ;;

   *) echo "Please type (y) or (n)"
        ;;
esac
}

operations () {
   case $OPTION in

  1)
    whois $domainName
    ask_to_repeat
    ;;

  2)
    dig $domainName
    ask_to_repeat
    ;;

  3)
   host $domainName 
   ask_to_repeat
    ;;
    
  4)
   nslookup $domainName
   ask_to_repeat
    ;;

  5)
    ask_domain
    bring_menu
    ;;
    
  0)
   echo "Thanks for using Domain Checker!"
    ;;

  *)
   echo "You must choose a valid option"
   bring_menu
    ;;
esac
}

start () {

    ask_domain
    bring_menu

}

start

