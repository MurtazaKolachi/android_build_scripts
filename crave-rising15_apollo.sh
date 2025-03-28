rm -rf .repo/local_manifests ; \
rm -rf {device,vendor,kernel,hardware}/xiaomi ; \
repo init --depth=1 --no-repo-verify -u https://github.com/RisingOS-Revived/android -b fifteen -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/MurtazaKolachi/android_build_manifest.git -b apollo-rising15 .repo/local_manifests && \
/opt/crave/resync.sh && \
export BUILD_USERNAME=Murtaza ; \
export BUILD_HOSTNAME=crave ; \
export TZ=Asia/islamabad ; \
source build/envsetup.sh && \
riseup apollo user && \
rise b
