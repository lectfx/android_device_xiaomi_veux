echo 'Starting to clone stuffs needed for your device'
# Stuffs to rm -rf
rm -rf hardware/xiaomi
rm -rf hardware/qcom-caf/sm8350/display

echo 'Cloning Common tree [1/6]'
# Common Tree
git clone https://github.com/lectfx/android_device_xiaomi_sm6375-common.git -b lineage-20.0 device/xiaomi/sm6375-common

echo 'Cloning Vendor tree [2/6]'
# Vendor Tree
git clone https://github.com/lectfx/android_vendor_xiaomi_veux.git -b lineage-20.0 vendor/xiaomi/veux

echo 'Cloning Kernel tree [3/6]'
# Kernel Tree
git clone --depth=1 https://github.com/LineageOS/android_kernel_oneplus_sm8350.git -b lineage-18.1 kernel/xiaomi/sm6375

echo 'Cloning Prebuilt Kernel tree [4/6]'
# Prebuilt Kernel Tree
git clone https://github.com/xiaomi-sm6375-devs/android_device_xiaomi_veux-kernel.git -b lineage-18.1 device/xiaomi/veux-kernel

echo 'Hardware repo [5/6]'
# Common Tree
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-20 hardware/xiaomi

echo 'Cloning Hals [6/6]'
# Hals
git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8350_display.git -b thirteen hardware/qcom-caf/sm8350/display

echo 'Completed !'