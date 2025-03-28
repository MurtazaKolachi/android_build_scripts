rm -rf .repo/local_manifests ; \
rm -rf {device,vendor,kernel,hardware}/xiaomi ; \
repo init --depth=1 --no-repo-verify -u https://github.com/ProjectMatrixx/android.git -b 15.0 --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/MurtazaKolachi/android_build_manifest.git -b apollo-matrixx15 .repo/local_manifests && \
/opt/crave/resync.sh && \
export BUILD_USERNAME=Murtaza ; \
export BUILD_HOSTNAME=crave ; \
export TZ=Asia/Islamabad ; \
source build/envsetup.sh && \
brunch apollo
