# VARIABLES
ENV_NAME?=myCoolEnv
CONDA_ENV_BASE=$(shell conda info --base)
ENV_BIN_DIR=$(CONDA_ENV_BASE)/envs/$(ENV_NAME)/bin
ENV_PIP=$(ENV_BIN_DIR)/pip

PYTHON_VERSION=3.9

# GOALS
## 1 - create new conda environment
newEnv:
	$(call _create)
	$(call _install)

	@echo "Base Packages Installed"

## 2 - delete conda environment
delEnv:
	conda remove -n $(ENV_NAME) --all -y


# FUNCTIONS
define _create
	@echo "----Creating Conda Environment: $(ENV_NAME) w/ Python==$(PYTHON_VERSION)----"

	conda create -n $(ENV_NAME) python==$(PYTHON_VERSION) -y
endef

define _install
	@echo "----Installing Packages Into Environment: $(ENV_NAME)----"

	$(ENV_PIP) install jupyter
endef