#!/bin/bash
echo
echo
echo "usage: bash SALT_pull.sh [all]"
echo "options:"
echo "    all    pull all SALT related repos plus non-SALT related repos"
echo

#----------------------------< N O N - L I B R A R Y >--------------------------------------------------------
#
# list of relative paths; the first relative this script's folder; each succeeding path relative to the preceding path.
# each folder name except the last must be followed by a space and then the line continuation character ' \'
# last folder name in list must not have the line continuation character

# These are MASTER pulls only.  To pull other branches, remove the library folder from these lists and do
# master and branch pull in the section at the end.


echo
echo "Try to do various git pulls"
echo "First: repos which are not libraries"
echo 

for folder in ../Arduino/SALT_CodeUpdates/ \
../SALT_reptile/ \
../NAP-SALT2-TEST \
../W5500_Test					# no line-continuation character for last folder
do
	if cd $folder; then echo ""; else pwd; exit; fi	#if successful echo an empty string to give if something to do
	if git pull origin master; then echo ""; else exit 1; fi
done


#----------------------------< L I B R A R Y >----------------------------------------------------------------
#
#
#

echo
echo
echo Now SALT library master repos
echo

for folder in \
../libraries/Ethernet \
../i2c_t3 `#I2C_T3 with systronix mods for exception handling` \
../ILI9341_t3/ \
../ILI9341_fonts \
../NAP_pod_load_defs \
../SALT_drawer_locks \
../SALT_exceptions \
../SALT_ext_sensors \
../SALT_FETs \
../SALT_heat_control \
../SALT_JX \
../SALT_logging \
../SALT_power_FRU \
../SALT_settings \
../SALT_UI \
../SALT_utilities \
../SdFat \
../SPI \
../Systronix_LCM300 \
../Systronix_MB85RC256V \
../Systronix_NTP \
../Systronix_PCA9548A \
../Systronix_PCA9557 \
../Systronix_TMP102 \
../Systronix_TMP275 \
../TeensyID \
../XPT2046_Touchscreen			# no line-continuation character for last folder
do
	if cd $folder; then echo ""; else pwd; exit; fi
	if git checkout master; then echo ""; else pwd; exit 1; fi	# force master checkout
	if git pull origin master; then echo ""; else pwd; exit 1; fi
done


#----------------------------< B R A N C H E S >--------------------------------------------------------------
#
# special cases when it is necessary to have multiple branches other than master
# 

echo "LCM300 lib with branches to support various SALT and Power Dist hardware..."
echo "... which have different I/O and pin mappings"

if cd ../Systronix_LCM300; then echo ""; else pwd; exit; fi

for branch in \
master \
SALT2_PowerDist1 \
SALT2v1_PowerDist2v0			# no line-continuation character for last branch
do
	if git checkout $branch; then echo ""; else pwd; exit 1; fi
	if git pull origin $branch; then echo ""; else pwd; exit 1; fi
done

if cd ../Systronix_PCA9557; then echo ""; else pwd; exit 1; fi

for branch in \
master \
i2c_t3_by_ref					# no line-continuation character for last branch
do
	if git checkout $branch; then echo ""; else pwd; exit 1; fi
	if git pull origin $branch; then echo ""; else pwd; exit 1; fi
done

if cd ../SALT_menu; then echo ""; else pwd; exit; fi

# leave with master branch checked out
for branch in \
usingclass \
master
do
	if git checkout $branch; then echo ""; else pwd; exit 1; fi
	if git pull origin $branch; then echo ""; else pwd; exit 1; fi
done





#----------------------------< N O N - S A L T >--------------------------------------------------------------
#
# these are non-SALT repos.  Most are kept for reference and are not used in SALT
#

if [[ $# -eq 0 ]]
then							# apparently must be on a separate line; don't know why
	echo
	echo
	echo "No arguments supplied; skipping non-SALT repos"
	echo "DONE but check for errors"
	exit 0
else
	echo
	echo
	echo "non-SALT repos"
fi


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
