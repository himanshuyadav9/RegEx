#!/bin/bash -x

echo "welcome to user registeration program"

function isFirstName()
{
   read -p "enter first name :" firstName
   pattern='(^[[:upper:]][[:alpha:]]{2,14}$)'
   if [[ $firstName =~ $pattern  ]]
   then
         echo "First name : $firstName"
   else
         echo "enter valid first name"
   fi
}
isFirstName

function islastName()
{
   read -p "enter last name :" lastName
   pattern='(^[[:upper:]][[:alpha:]]{2,14}$)'
   if [[ $lastName =~ $pattern  ]]
   then
         echo "last name : $lastName"
   else
        echo "enter valid last name"
   fi
}
islastName
