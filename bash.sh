#Download full sites from list of urls.
wget $url in $(cat listofurls.txt) ; do wget -p $url ; done


