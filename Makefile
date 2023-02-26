.DEFAULT_GOAL := help

# colors
color1 = $(shell tput setaf 7)
color2 = $(shell tput setaf 6)
reset = $(shell tput sgr0)

.PHONY: help
help: ## List all available make targets
	@echo "$(color1)Choose one of the following targets:$(reset)\n"
	@awk 'BEGIN { FS = ":.*##" } \
        /^[a-z0-9_-]+:.*?##/ { \
          printf "$(color2)%-20s$(reset) %s\n", $$1, $$2 \
        }' $(MAKEFILE_LIST) | sort


.PHONY: dev-generate-images
dev-generate-images: ## Generates images used for testing
	for filetype in bmp gif jpeg jpg pdf png; do \
		sed "s/image.svg/image.$${filetype}/g" media/image.svg | convert - media/image.$${filetype}; \
	done
	tar -cvf media/archive.tar media/image.svg
