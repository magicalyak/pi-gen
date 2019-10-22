#!/bin/bash -e

if [ "${USE_PIJUICE}" = "1" ]; then
# 	echo "enabling PiJuice"
install -v -d                                 "${ROOTFS_DIR}/var/lib/pijuice"
install -v -m 600 files/pijuice_config.JSON   "${ROOTFS_DIR}/var/lib/pijuice/"
on_chroot <<EOF
systemctl enable pijuice
EOF
fi