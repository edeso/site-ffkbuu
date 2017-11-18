##  GLUON_SITE_PACKAGES
#   specify Gluon/LEDE packages to include here
#   The gluon-mesh-batman-adv-* package must come first because of the dependency resolution
GLUON_SITE_PACKAGES := \
  gluon-mesh-batman-adv-15 \
  gluon-respondd \
  gluon-autoupdater \
  gluon-config-mode-autoupdater \
  gluon-config-mode-contact-info \
  gluon-config-mode-core \
  gluon-config-mode-geo-location \
  gluon-config-mode-hostname \
  gluon-config-mode-mesh-vpn \
  gluon-ebtables-filter-multicast \
  gluon-ebtables-filter-ra-dhcp \
  gluon-neighbour-info \
  gluon-web-private-wifi \
  gluon-web-admin \
  gluon-web-autoupdater \
  gluon-web-network \
  gluon-web-wifi-config \
  gluon-mesh-vpn-fastd \
  gluon-radvd \
  gluon-setup-mode \
  gluon-status-page \
  haveged \
  iptables \
  iwinfo

# basic support for USB stack
USB_PACKAGES_BASIC := \
  kmod-usb-core \
  kmod-usb2 \
  kmod-usb2-pci

# storage support for USB devices
USB_PACKAGES_STORAGE := \
  block-mount \
  blkid \
  kmod-fs-ext4 \
  kmod-fs-vfat \
  kmod-usb-storage \
  kmod-usb-storage-extras \
  kmod-nls-cp1250 \
  kmod-nls-cp1251 \
  kmod-nls-cp437 \
  kmod-nls-cp775 \
  kmod-nls-cp850 \
  kmod-nls-cp852 \
  kmod-nls-cp866 \
  kmod-nls-iso8859-1 \
  kmod-nls-iso8859-13 \
  kmod-nls-iso8859-15 \
  kmod-nls-iso8859-2 \
  kmod-nls-koi8r \
  kmod-nls-utf8 \
  swap-utils

# network support for USB devices
USB_PACKAGES_NET := \
  kmod-mii \
  kmod-nls-base \
  kmod-usb-net \
  kmod-usb-net-asix \
  kmod-usb-net-asix-ax88179 \
  kmod-usb-net-cdc-eem \
  kmod-usb-net-cdc-ether \
  kmod-usb-net-cdc-mbim \
  kmod-usb-net-cdc-ncm \
  kmod-usb-net-cdc-subset \
  kmod-usb-net-dm9601-ether \
  kmod-usb-net-hso \
  kmod-usb-net-huawei-cdc-ncm \
  kmod-usb-net-ipheth \
  kmod-usb-net-kalmia \
  kmod-usb-net-kaweth \
  kmod-usb-net-mcs7830 \
  kmod-usb-net-pegasus \
  kmod-usb-net-qmi-wwan \
  kmod-usb-net-rndis \
  kmod-usb-net-rtl8150 \
  kmod-usb-net-rtl8152 \
  kmod-usb-net-sierrawireless \
  kmod-usb-net-smsc95xx \
  kmod-usb-net-sr9700

# network support for USB devices
USB_PACKAGES_SERIAL := \
  kmod-usb-serial \
  kmod-usb-serial-ark3116 \
  kmod-usb-serial-belkin \
  kmod-usb-serial-ch341 \
  kmod-usb-serial-cp210x \
  kmod-usb-serial-cypress-m8 \
  kmod-usb-serial-dmx_usb_module \
  kmod-usb-serial-ftdi \
  kmod-usb-serial-garmin \
  kmod-usb-serial-ipw \
  kmod-usb-serial-keyspan \
  kmod-usb-serial-mct \
  kmod-usb-serial-mos7720 \
  kmod-usb-serial-option \
  kmod-usb-serial-oti6858 \
  kmod-usb-serial-pl2303 \
  kmod-usb-serial-qualcomm \
  kmod-usb-serial-sierrawireless \
  kmod-usb-serial-simple \
  kmod-usb-serial-ti-usb \
  kmod-usb-serial-visor \
  kmod-usb-serial-wwan \
  kmod-usb-serial-xr_usb_serial_common

# network support for PCI devices
PCI_PACKAGES_NET := \
  kmod-3c59x \
  kmod-8139cp \
  kmod-8139too \
  kmod-atl1 \
  kmod-atl1c \
  kmod-atl1e \
  kmod-atl2 \
  kmod-b44 \
  kmod-bnx2 \
  kmod-dm9000 \
  kmod-dummy \
  kmod-e100 \
  kmod-e1000 \
  kmod-e1000e \
  kmod-et131x \
  kmod-ethoc \
  kmod-forcedeth \
  kmod-gigaset \
  kmod-hfcmulti \
  kmod-hfcpci \
  kmod-ifb \
  kmod-igb \
  kmod-libphy \
  kmod-macvlan \
  kmod-mii \
  kmod-natsemi \
  kmod-ne2k-pci \
  kmod-of-mdio \
  kmod-pcnet32 \
  kmod-phy-broadcom \
  kmod-phylib-broadcom \
  kmod-ppfe \
  kmod-r6040 \
  kmod-r8169 \
  kmod-siit \
  kmod-sis190 \
  kmod-sis900 \
  kmod-skge \
  kmod-sky2 \
  kmod-solos-pci \
  kmod-spi-ks8995 \
  kmod-swconfig \
  kmod-switch-ip17xx \
  kmod-switch-mvsw61xx \
  kmod-switch-rtl8366-smi \
  kmod-switch-rtl8366rb \
  kmod-switch-rtl8366s \
  kmod-switch-rtl8367b \
  kmod-tg3 \
  kmod-tulip \
  kmod-via-rhine \
  kmod-via-velocity \
  kmod-vmxnet3

# additional tools
TOOLS_PACKAGES := \
  iperf \
  socat \
  tcpdump \
  usbutils \
  vnstat \
  pciutils

## $(GLUON_TARGET) specific settings, mainly adding usb to some models by default

# x86-generic
ifeq ($(GLUON_TARGET),x86-generic)
# support the usb stack on x86 devices
# and add a few common USB and PCI NICs
GLUON_SITE_PACKAGES += \
  kmod-usb-hid \
  kmod-hid-generic \
  $(USB_PACKAGES_BASIC) \
  $(USB_PACKAGES_STORAGE) \
  $(USB_PACKAGES_NET) \
  $(USB_PACKAGES_SERIAL) \
  $(PCI_PACKAGES_NET) \
  $(TOOLS_PACKAGES)
endif

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
# support the usb stack on x86-64 devices
# and add a few common USB and PCI NICs
GLUON_SITE_PACKAGES += \
  kmod-usb-hid \
  kmod-hid-generic \
  $(USB_PACKAGES_BASIC) \
  $(USB_PACKAGES_STORAGE) \
  $(USB_PACKAGES_NET) \
  $(USB_PACKAGES_SERIAL) \
  $(PCI_PACKAGES_NET) \
  $(TOOLS_PACKAGES)
endif

ifeq ($(GLUON_TARGET),x86-kvm_guest)
GLUON_SITE_PACKAGES += \
  $(USB_PACKAGES_BASIC) \
  $(USB_PACKAGES_STORAGE) \
  $(PCI_PACKAGES_NET) \
  $(TOOLS_PACKAGES)
endif

# ar71xx-generic
GLUON_TLWR842_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_TLWR1043_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_TLWR2543_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_TLWDR4300_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_WNDR3700_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_WRT160NL_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_ARCHERC7_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_GLINET_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_WZRHPG450H_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)
GLUON_WZRHPAG300H_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)

# mpc85xx-generic
GLUON_TLWDR4900_SITE_PACKAGES := $(USB_PACKAGES_BASIC) $(TOOLS_PACKAGES) $(USB_PACKAGES_STORAGE)

##  DEFAULT_GLUON_RELEASE
#   version string to use for images
#   gluon relies on
#   opkg compare-versions "$1" '>>' "$2"
#   to decide if a version is newer or not.

## Firmware name pattern
# we use git to tell us the most recent tag of our branch
DEFAULT_GLUON_RELEASE := $(shell git describe --always --dirty=+ 2>/dev/null || echo unknown)$(if $(GLUON_BRANCH),($(GLUON_BRANCH)),)-$(shell date '+%Y%m%d')


##  GLUON_RELEASE
#    call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#    e.g.:
#      $ make images GLUON_RELEASE=23.42+5
#    would generate images named like this:
#      gluon-ff%site_code%-23.42+5-%router_model%.bin

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de

# Region settings for ARCHERC7
GLUON_REGION ?= eu

GLUON_ATH10K_MESH = ibss
