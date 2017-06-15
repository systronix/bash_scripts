#!/bin/bash
echo Try to do various git pulls
echo First: repos which are not libraries
echo 
cd ../Arduino/SALT_CodeUpdates/
git pull origin master
echo 
cd ../SALT_reptile/
git pull origin master
echo 
cd ../NAP-SALT2-TEST
git pull origin master
echo 
cd ../W5500_Test
git pull origin master
echo 
echo Now library repos
cd ../libraries
pwd
cd XPT2046_Touchscreen
pwd
git pull origin master
echo 
cd ../ILI9341_t3/
pwd
git pull origin master
echo 
cd ../ILI9341_fonts
pwd
git pull origin master
echo 
cd ../i2c_t3
pwd
git pull origin master
echo 
cd ../SALT_exceptions
pwd
git pull origin master
echo
cd ../SALT_FETs/
pwd
git pull origin master
echo 
cd ../SALT_menu/
pwd
git pull origin master
echo 
cd ../Systronix_MB85RC256V
pwd
git pull origin master
echo 
cd ../NAP_pod_load_defs
pwd
git pull origin master
echo 
cd ../SALT_drawer_locks
pwd
git pull origin master
echo 
cd ../SALT_drawer_locks
pwd
git pull origin master
echo 
cd ../SALT_settings
pwd
git pull origin master
echo 
cd ../SALT_UI
pwd
git pull origin master
echo 
cd ../SALT_utilities
pwd
git pull origin master
echo 
cd ../SALT_heat_control
pwd
git pull origin master
echo 
cd ../SALT_JX
pwd
git pull origin master
echo 
cd ../Systronix_PCA9557
pwd
git pull origin --all
echo 
cd ../Systronix_TMP102
pwd
git pull origin master
echo 
cd ../Systronix_TMP275
pwd
git pull origin master
echo
cd ../SdFat
pwd
git pull origin master
echo 
cd ../SALT_logging
pwd
git pull origin master
echo
cd ../Systronix_LCM300
pwd
git pull --all
echo
cd ../Ethernet2
pwd
git pull origin master
echo
cd ../Ethernet
pwd
git pull origin master
echo 
cd ../TeensyMAC
pwd
git pull origin master
echo
cd ../T3Mac
pwd
git pull origin master
echo
cd ../TeensyID
pwd
git pull origin master
# echo
# cd ../EmonLib
# pwd
# git pull origin master
echo
echo Back to the script folder
cd ../..
pwd
echo 
echo DONE but check for errors