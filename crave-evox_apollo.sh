rm -rf .repo/local_manifests ; \
rm -rf {device,vendor,kernel,hardware}/xiaomi ; \
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-XYZ/manifest -b vic --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/MurtazaKolachi/android_build_manifest.git -b apollo-evo15 .repo/local_manifests && \
/opt/crave/resync.sh && \
repo forall -c 'git lfs pull' ; \
export BUILD_USERNAME=Murtaza ; \
export BUILD_HOSTNAME=crave ; \
export TZ=Asia/Islamabad ; \
export RELAX_USES_LIBRARY_CHECK=true && \
source build/envsetup.sh && \
lunch lineage_apollo-user && \
make installclean && \
m evolution
