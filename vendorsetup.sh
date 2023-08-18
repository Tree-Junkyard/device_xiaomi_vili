rm -rf device/xiaomi/sm8350-common
git clone https://github.com/Tree-Junkyard/device_xiaomi_sm8350-common device/xiaomi/sm8350-common

rm -rf vendor/xiaomi
git clone --depth=1 https://github.com/blazerpaul15/vendor_xiaomi_vili vendor/xiaomi/vili
git clone --depth=1 https://github.com/blazerpaul15/vendor_xiaomi_sm8350-common vendor/xiaomi/sm8350-common

git clone --depth=1 https://gitlab.com/blazerpaul15/vendor_xiaomi_vili-firmware vendor/xiaomi/vili-firmware
git clone --depth=1 https://gitlab.com/Santhanabalan/vendor-xiaomi-vili-miuicamera -b thirteen-leica vendor/xiaomi/vili-miuicamera

rm -rf kernel/xiaomi
git clone --depth=1 https://github.com/blazerpaul15/kernel_xiaomi_sm8350 kernel/xiaomi/sm8350

rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/blazerpaul15/hardware_xiaomi hardware/xiaomi

rm -rf hardware/lineage/compat
rm -rf hardware/custom/compat
git clone --depth=1 https://github.com/PixelExperience/hardware_custom_compat hardware/custom/compat
