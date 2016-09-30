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
echo Now library repos
cd ../libraries/SALT_menu/
git pull origin master
echo 
cd ../Systronix_MB85RC256V
git pull origin master
echo 
cd ../NAP_pod_load_defs
git pull origin master
echo 
cd ../SALT_drawer_locks
git pull origin master
echo 
cd ../SALT_settings
git pull origin master
echo 
cd ../SALT_UI
git pull origin master
echo 
cd ../SALT_utilities
git pull origin master
echo 
cd ../SALT_heat_control
git pull origin master
echo 
cd ../SALT_JX
git pull origin master
echo 
cd ../Systronix_PCA9557
git pull origin master
echo 
cd ../Systronix_TMP102
git pull origin master
echo 
cd ../SdFat
git pull origin master
echo DONE but check for errors