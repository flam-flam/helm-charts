.DEFAULT_GOAL := help



.PHONY: help
help: ## Display this help
##& Examples:
###& $ make help foo
###& $ make help bar
	@echo "\nUsage:\n  make \033[1m\033[36m<target>\033[0m"
	@awk 'BEGIN {FS = ":.*##"}; \
		/^[a-zA-Z0-9_-]+:.*?##/ { printf "  \033[1m\033[36m%-15s\033[0m %s\n", $$1, $$2 } \
		/^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } \
		/^###@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } \
		/^##&/ { printf "\t\t   \033[1m\033[33m%s\033[0m\n", substr($$0, 5) } \
		/^###&/ { printf "\t\t    \033[0m\033[36m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
##@ To add more information to the help output, see the example provided in help target
