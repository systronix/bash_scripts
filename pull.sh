#!/bin/bash
echo Try to do various git pulls
echo First: repos which are not libraries
cd ../Arduino/SALT_CodeUpdates/
git pull origin master
cd ../SALT_reptile/
git pull origin master
cd ../NAP-SALT2-TEST
git pull origin master

echo Now library repos
cd ../libraries/SALT_menu/
git pull origin master
cd ../Systronix_MB85RC256V
git pull origin master
cd ../NAP_pod_load_defs
git pull origin master
cd ../SALT_drawer_locks
git pull origin master
cd ../SALT_settings
git pull origin master
cd ../SALT_UI
git pull origin master
cd ../SALT_utilities
git pull origin master
cd ../SALT_heat_control
git pull origin master
cd ../SALT_JX
git pull origin master
cd ../Systronix_PCA9557
git pull origin master
cd ../Systronix_TMP102
git pull origin master
cd ../SdFat
git pull origin master