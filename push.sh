#!/bin/bash
echo Try to do various git pushes
echo First: repos which are not libraries
cd ../Arduino/SALT_CodeUpdates/
git push origin master
cd ../SALT_reptile/
git push origin master
cd ../NAP-SALT2-TEST
git push origin master

echo Now library repos
cd ../libraries/SALT_menu/
git push origin master
cd ../Systronix_MB85RC256V
git push origin master
cd ../NAP_pod_load_defs
git push origin master
cd ../SALT_drawer_locks
git push origin master
cd ../SALT_settings
git push origin master
cd ../SALT_UI
git push origin master
cd ../SALT_utilities
git push origin master
cd ../SALT_heat_control
git push origin master
cd ../SALT_JX
git push origin master
cd ../Systronix_PCA9557
git push origin master
cd ../Systronix_TMP102
git push origin master
cd ../SdFat
git push origin master