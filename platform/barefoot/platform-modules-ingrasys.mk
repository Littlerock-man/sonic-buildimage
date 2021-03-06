# Ingrasys S9180-32X Platform modules

INGRASYS_S9180_32X_PLATFORM_MODULE_VERSION = 1.1.0
INGRASYS_S9280_64X_PLATFORM_MODULE_VERSION = 1.1.0

export INGRASYS_S9180_32X_PLATFORM_MODULE_VERSION
export INGRASYS_S9280_64X_PLATFORM_MODULE_VERSION

INGRASYS_S9180_32X_PLATFORM_MODULE = sonic-platform-ingrasys-s9180-32x_$(INGRASYS_S9180_32X_PLATFORM_MODULE_VERSION)_amd64.deb
$(INGRASYS_S9180_32X_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-ingrasys
$(INGRASYS_S9180_32X_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(INGRASYS_S9180_32X_PLATFORM_MODULE)_PLATFORM = x86_64-ingrasys_s9180_32x-r0
SONIC_DPKG_DEBS += $(INGRASYS_S9180_32X_PLATFORM_MODULE)

INGRASYS_S9280_64X_PLATFORM_MODULE = sonic-platform-ingrasys-s9280-64x_$(INGRASYS_S9280_64X_PLATFORM_MODULE_VERSION)_amd64.deb
$(INGRASYS_S9280_64X_PLATFORM_MODULE)_PLATFORM = x86_64-ingrasys_s9280_64x-r0

$(eval $(call add_extra_package,$(INGRASYS_S9180_32X_PLATFORM_MODULE),$(INGRASYS_S9280_64X_PLATFORM_MODULE)))

SONIC_STRETCH_DEBS += $(INGRASYS_S9180_32X_PLATFORM_MODULE)
