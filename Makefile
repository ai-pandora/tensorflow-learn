.PHONY: dist test build

visual_evn_name = tf

# creat visual env
createVenv3.5:
	conda create -n $(visual_evn_name) python=3.5 anaconda
# creat visual env 3.6
createVenv3.6:
	conda create -n $(visual_evn_name)-3.6 python=3.6 anaconda

# install pylint
installPylint:
	python -m pip install -U pylint

# install last tensorflow after createVenv
installTF:
	pip install --upgrade tensorflow

# install last tensorflow-GPU after createVenv
installTFGPU:
	pip install --upgrade tensorflow-gpu

# print into visual env if windows not has source
venv:
	@echo "source activate $(visual_evn_name) -> if windows not has source"

# print into visual env if windows not has source
disVenv:
	@echo "source deactivate $(visual_evn_name) -> if windows not has source"

help:
	@echo "make clean -> remove build files"
	@echo "make venv -> print into visual env $(visual_evn_name) if as other version just use $(visual_evn_name)-version"
	@echo "make disVenv -> print exit visual env $(visual_evn_name) if as other version just use $(visual_evn_name)-version"
	@echo "make createVenv3.5 -> creat visual env $(visual_evn_name)"
	@echo "make createVenv3.6 -> creat visual env $(visual_evn_name)-3.6"
	@echo "make installTF -> install last tensorflow after createVenv in env"
	@echo "make installTFGPU -> install last tensorflow-GPU after createVenv in env"
	@echo "make installPylint -> install python write lint tools in env"
