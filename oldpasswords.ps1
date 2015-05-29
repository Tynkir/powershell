get-adcomputer -filter "Passwordlastset

-lt '1/1/2012'" -properties *| Select name,passwordlastset 

#use below to disable them
#-lt '1/1/2012'" -properties *| Disable-ADAccount 
