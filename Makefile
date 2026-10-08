# SPDX-License-Identifier: MIT

SHELL := bash
REGIONS := JP US

.PHONY: all $(REGIONS) clean $(addprefix clean-,$(REGIONS)) bathroom-preview bathroom-door-open-preview bathroom-objects-preview

all: $(REGIONS)

bathroom-preview:
	$(MAKE) -C asm/US SHELL="$(SHELL)" bathroom-preview

bathroom-door-open-preview:
	$(MAKE) -C asm/US SHELL="$(SHELL)" bathroom-door-open-preview

bathroom-objects-preview:
	$(MAKE) -C asm/US SHELL="$(SHELL)" bathroom-objects-preview

$(REGIONS):
	$(MAKE) -C asm/$@ SHELL="$(SHELL)"

clean: $(addprefix clean-,$(REGIONS))

$(addprefix clean-,$(REGIONS)):
	$(MAKE) -C asm/$(patsubst clean-%,%,$@) SHELL="$(SHELL)" clean
