#!/bin/bash
# sed '/|->/s/^echo/# echo/' /etc/profile

FILES="/etc/profile /etc/bashrc $HOME/.bash_profile $HOME/.bashrc $HOME/.bash_logout" 

for i in $FILES
do
	# echo $i
	sed -i '/|->/s/^echo/# echo/' $i
done

rm -f /etc/profile.d/test.sh >/dev/null



