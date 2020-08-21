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

function isEmail()
{
   read -p "enter Email :" email
   pattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)@[0-9a-zA-Z]+.[a-zA-Z]{2,5}([.][a-zA-Z]{2,3})$"
   if [[ $email =~ $pattern  ]]
   then
         echo "Email : $email"
   else
        echo "enter valid email"
   fi
}
isEmail

function isMobileNumber()
{
   read -p "enter mobile number :" number
   pattern='[+][1-9]{1}[0-9]{1,2}[ ][1-9]{1}[0-9]{7,9}'
   if [[ $number =~ $pattern  ]]
   then
         echo "mobile number : $number"
   else
        echo "enter valid number"
   fi
}
isMobileNumber

function isValidPassword()
{
   read -p "enter minimum 8 character password :"  userPassword
   passwordPattern='.{8,}'
   if [[ $userPassword =~ $passwordPattern  ]]
   then
          isOneUpperCase
   else
        echo "Invalid\n"
   fi
}

function isOneUpperCase()
{
   oneUpperCasePattern='([[:upper:]]{1,})'
   if [[ $userPassword =~ $oneUpperCasePattern  ]]
   then
         isOneNumeric
   else
        echo "Invalid enter atleast one upper case\n"
   fi
}

function isOneNumeric()
{
   oneNumericPattern='[0-9]{1,}'
   if [[ $userPassword =~ $oneNumericPattern  ]]
   then
         echo "valid\n"
   else
        echo "Invalid enter atleast one numeric value\n"
   fi
}
isValidPassword


