#! /bin/bash

path=$1

if [ -z "$path" ]
then
	
	echo "path to folder"
	read path 

else

	echo "/// Setting up folders and files apache permissions ///"

		sudo chown -R www-data:www-data $path
		echo -ne '##################\r'
		sleep 1
		sudo find $path -type f -exec chmod 664 {} \;
		echo -ne '##################################\r'
		sleep 1    
		sudo find $path -type d -exec chmod 775 {} \;
		echo -ne '#######################################################\r'
		echo -ne '\n'

	echo "Insert your local user:"
	read user
	echo "/// Setting up folders and files user permissions ///"

		sudo chown -R $user:www-data $path
		echo -ne '##################\r'
		sleep 1
		sudo find $path -type f -exec chmod 664 {} \;
		echo -ne '##################################\r'
		sleep 1    
		sudo find $path -type d -exec chmod 775 {} \;
		echo -ne '#######################################################\r'
		echo -ne '\n'	

	echo "/// Setting up bootstrap/cache folder permissions ///"

		echo -ne '##################\r'
		sleep 1
		sudo chgrp -R www-data storage bootstrap/cache
		echo -ne '##################################\r'
		sleep 1
		sudo chmod -R ug+rwx storage bootstrap/cache
		echo -ne '#######################################################\r'
		echo -ne '\n'
fi