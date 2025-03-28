rm -rf .repo/local_manifests && \
rm -rf {device,vendor,kernel,hardware}/xiaomi ; \
repo init --depth=1 --no-repo-verify -u https://github.com/DerpFest-AOSP/manifest.git -b 15 --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/MurtazaKolachi/android_build_manifest.git -b apollo-derp15 .repo/local_manifests && \
/opt/crave/resync.sh && \
repo forall -c 'git lfs pull' ; \
export BUILD_USERNAME=Murtaza ; \
export BUILD_HOSTNAME=crave ; \
export TZ=Asia/Islamabad ; \
export DISABLE_STUB_VALIDATION=true ; \
cd vendor/derp && curl -s https://raw.githubusercontent.com/aosp-realm/ota-stuff/refs/heads/main/0001-tools-Allow-json-to-be-generated-in-all-builds.patch > json.patch && git apply json.patch ; cd ../../ && \
cd frameworks/base && git pull --unshallow ; git revert cd3e0c25d52a159ccf3a8496587b139440055c13 ; cd ../../ && \
source build/envsetup.sh && \
lunch derp_apollo-user && \
make installclean ; \
mka derp
