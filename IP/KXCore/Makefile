.DEFAULT_GOAL := build

help:
	@./mill -i MultiCycleCore.run --help

debug:
	@./mill -i MultiCycleCore.run -td build

build:
	@./mill -i MultiCycleCore.run -td build --firtool-option -disable-all-randomization --firtool-option -strip-debug-info

clean:
	-@rm -rf build

.PHONY: help build debug
