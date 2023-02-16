BUILD_PATH 					?= $(shell pwd)

HELM      					?= helm
HELM_OUTPUT_DIR     ?= $(BUILD_PATH)/tmp

export 

# helm

helm-add-h-s:
	@$(HELM) repo add H-S https://charts.alshikh.de
	@$(HELM) repo update

helm-lint:
	$(HELM) lint charts/*
