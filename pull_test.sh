
# Ethernet2 Not used by SALT, but by M0 Pro and W5500 shield
for folder in \
../Ethernet2 \
../TeensyMAC \
../T3Mac 
do
	if cd $folder; then echo ""; else pwd; exit; fi
	if git pull origin master; then echo ""; else pwd; exit 1; fi
done

echo
echo
echo "DONE but check for errors"
