sudo apt install git aria2 -y
git clone https://gitlab.com/OrangeFox/misc/scripts
cd scripts
sudo bash setup/android_build_env.sh
sudo bash setup/install_android_sdk.sh

mkdir ~/OrangeFox_sync
cd ~/OrangeFox_sync
  git clone https://gitlab.com/OrangeFox/sync.git
  cd ~/OrangeFox_sync/sync/
  ./orangefox_sync.sh --branch 11.0 --path ~/fox_12.1
  
  cd ~/fox_12.1
  git clone https://github.com/pjgowtham/recovery_device_oplus_nicky.git device/oplus/nicky
  
  cd ~/fox_12.1
    source build/envsetup.sh
  export ALLOW_MISSING_DEPENDENCIES=true
  export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
  export LC_ALL="C"
  
  lunch twrp_nicky-eng && mka adbd recoveryimage
