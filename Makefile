.PHONY: dist test build

visual_evn_name := tf

# creat visual env
createVenv:
	conda create -n $(visual_evn_name) python=3.5 anaconda

# into visual env
venv:
	activate $(visual_evn_name)

# into visual env
disVenv:
	deactivate $(visual_evn_name)

help:
	@echo "make clean -> remove build files"
	@echo "make venv -> into visual env $(visual_evn_name)"
	@echo "make disVenv -> exit visual env $(visual_evn_name)"
	@echo "make createVenv -> creat visual env $(visual_evn_name)"