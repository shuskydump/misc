# Common Tree
git clone https://github.com/shuskydump/device_google_gs-common.git -b lineage-23.2 device/google/gs-common

# Device Tree
git clone https://github.com/shuskydump/device_google_akita.git -b 16.2 device/google/akita
git clone https://github.com/shuskydump/device_google_shusky.git -b 16.2 device/google/shusky
git clone https://github.com/shuskydump/device_google_zuma.git -b 16.2 device/google/zuma

# Kernel Tree
git clone https://github.com/shuskydump/device_google_akita-kernels.git --depth=1 -b 16.0 device/google/akita-kernels
git clone https://github.com/shuskydump/device_google_shusky-kernels.git --depth=1 -b 16.0 device/google/shusky-kernels


# Vendor Tree
git clone https://gitlab.com/kxshik/vendor_google_shiba.git --depth=1 -b 16.0 vendor/google/shiba
git clone https://gitlab.com/kxshik/vendor_google_akita.git --depth=1 -b 16.0 vendor/google/akita
git clone https://gitlab.com/kxshik/vendor_google_husky.git --depth=1 -b 16.0 vendor/google/husky

# Extra Vendor Stuff
git clone https://gitlab.com/kxshik/vendor_google_pixels_extras.git --depth=1 -b 16.0 vendor/google/pixels/extras
git clone https://gitlab.com/kxshik/vendor_google_camera.git --depth=1 -b zuma vendor/google/camera
git clone https://gitlab.com/kxshik/vendor_google_faceunlock.git --depth=1 -b 16.0 vendor/google/faceunlock
