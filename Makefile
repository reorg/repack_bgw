# repack_bgw project makefile
#
# Copyright (c) 2017, The Reorg Development Team

SUBDIRS = repack_bgw

all install installdirs uninstall distprep clean distclean maintainer-clean debug:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir $@ || exit; \
	done
