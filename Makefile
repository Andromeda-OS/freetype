Project  = $(RC_ProjectName)
Project ?= freetype

Sources  = freetype
Extra_Configure_Flags = --without-fsspec --without-fsref --without-quickdraw-carbon CC=clang
Extra_Make_Flags = CC=clang

ifeq ($(MAKEFILEPATH),)
$(error MAKEFILEPATH must be defined, it should have come from Xcode)
endif
include $(MAKEFILEPATH)/CoreOS/ReleaseControl/GNUSource.make
