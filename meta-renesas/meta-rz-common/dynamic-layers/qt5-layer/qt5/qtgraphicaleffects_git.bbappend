#Revision to update qt5.6.3
require qt5.6.3_git.inc
SRCREV = "bf13dd5ca02d861c3a554743948c939a339d5061"

LIC_FILES_CHKSUM = " \
    file://LICENSE.LGPLv21;md5=4bfd28363f541b10d9f024181b8df516 \
    file://LICENSE.LGPLv3;md5=e0459b45c5c4840b353141a8bbed91f0 \
    file://LICENSE.GPLv3;md5=88e2b9117e6be406b5ed6ee4ca99a705 \
    file://LICENSE.GPLv2;md5=c96076271561b0e3785dad260634eaa8 \
    file://LGPL_EXCEPTION.txt;md5=9625233da42f9e0ce9d63651a9d97654 \
    file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e \
"

# Avoid error in do_package_qa due to missing rdepends to graphic libraries
# Should not use RDEPENDS here because graphic libraries can be provided by different packages
INSANE_SKIP_${PN}-qmlplugins_append = " file-rdeps"
