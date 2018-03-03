#!/bin/bash
# leave with current working branch of each repo checked out, otherwise builds will be incorrect, or fail
echo Try to do various git pulls
echo ---- First: repos which are not libraries ----
echo 
cd ../Arduino/SALT_CodeUpdates/
git pull origin master
echo 
cd ../SALT_reptile/
git checkout master
git pull origin master
echo 
cd ../NAP-SALT2-TEST
git pull origin master
echo 
cd ../W5500_Test
git checkout with_ethernet2
git pull origin with_ethernet2
echo "leave current working branch master checked out"
git checkout master
git pull origin master
echo
cd ../SALT_mfg_test
git checkout master
git pull origin master
echo
cd ../MUX_mfg_test
git checkout master
git pull origin master
echo
echo ---- Now library repos ----
cd ../libraries
pwd
cd XPT2046_Touchscreen
echo "XPT2046 touchscreen from PRJC"
pwd
git pull origin master
echo 
cd ../SPI
echo "PJRC SPI optimized for Teensy"
pwd
git pull origin master
echo
cd ../ILI9341_t3/
echo "PRJC ILI9341 touchscreen optimized for Teensy"
pwd
git pull origin master
echo 
cd ../ILI9341_fonts
pwd
git pull origin master
echo "I2C_T3 with systronix mods for exception handling"
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
cd ../SALT_ethernet
pwd
git pull origin master
echo
cd ../Systronix_PCA9557
pwd
git checkout i2c_t3_by_ref
git pull origin i2c_t3_by_ref
git checkout master
git pull origin master
echo 
cd ../Systronix_PCA9548A
pwd
git pull origin master
echo 
cd ../Systronix_TMP102
pwd
git pull origin master
echo 
cd ../Systronix_HDC1080
git pull origin master
echo
cd ../Systronix_ili9341_helper
git pull origin master
echo
cd ../Systronix_M24C32
pwd
git pull origin master
echo
cd ../Systronix_MS8607
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
echo "This is just the LCM300 lib with branches to support various SALT and Power Dist hardware..."
echo "... which have different I/O and pin mappings"
pwd
echo "For old SALT 2.0 which we are not currently using anymore."
git checkout SALT2_PowerDist1
git pull origin SALT2_PowerDist1
echo "Latest hardware including SALT 2.2 and PD 2.2, as well as older SALT 2.1 with 2.2 ECOs and PowerDist 2.0, 2.1"
git checkout SALT2v1_PowerDist2v0
git pull origin SALT2v1_PowerDist2v0
echo "The master branch, leave with master checked out"
git checkout master
git pull origin master
echo
cd ../SALT_power_FRU
git pull origin master
echo "Not used by SALT, but by M0 Pro and W5500 shield"
cd ../Ethernet2
pwd
git pull origin master
echo "Used with SALT"
cd ../Ethernet
pwd
git pull origin master
echo " "
echo "DS1307RTC"
cd ../DS1307RTC
pwd
git pull origin master
echo
echo "We don't actually use this; keep it for reference"
cd ../TeensyMAC
pwd
git pull origin master
echo "We don't actually use this; keep it for reference"
cd ../T3Mac
pwd
git pull origin master
echo "Used with SALT"
cd ../TeensyID
pwd
git pull origin master
# echo
# cd ../EmonLib
# pwd
# git pull origin master
echo
cd ../Systronix_NTP
pwd
git pull origin master
echo
cd ../SALT_ext_sensors
pwd
git pull origin master
echo
echo Back to the script folder
cd ../..
pwd
echo 
echo "DONE but check for errors"