rm -rf .repo/local_manifests ; \
rm -rf {device,vendor,kernel,hardware}/xiaomi ; \
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-XYZ/manifest -b vic --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/MurtazaKolachi/android_device_xiaomi_apollo -b matrixx device/xiaomi/apollo && \
git clone https://github.com/MurtazaKolachi/android_vendor_xiaomi_apollo -b main vendor/xiaomi/apollo && \
git clone https://github.com/MurtazaKolachi/android_kernel_xiaomi_apollo -b main kernel/xiaomi/apollo && \
git clone https://github.com/MurtazaKolachi/hardware_xiaomi -b fifteen hardware/xiaomi && \
export BUILD_USERNAME=Murtaza ; \
export BUILD_HOSTNAME=crave ; \
export TZ=Asia/Islamabad ; \
export RELAX_USES_LIBRARY_CHECK=true && \
source build/envsetup.sh && \
lunch lineage_apollo-user && \
make installclean && \
m evolution
