# SPDX-License-Identifier: MIT

SHELL := bash
REGIONS := JP US

.PHONY: all $(REGIONS) clean $(addprefix clean-,$(REGIONS))

all: $(REGIONS)

$(REGIONS):
	$(MAKE) -C asm/$@ SHELL="$(SHELL)"

clean: $(addprefix clean-,$(REGIONS))

$(addprefix clean-,$(REGIONS)):
	$(MAKE) -C asm/$(patsubst clean-%,%,$@) SHELL="$(SHELL)" clean
