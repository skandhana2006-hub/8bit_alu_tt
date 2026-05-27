SIM ?= icarus
TOPLEVEL_LANG ?= verilog

SRC_DIR = $(PWD)/../src

VERILOG_SOURCES += $(SRC_DIR)/tt_um_8bit_alu.v
VERILOG_SOURCES += $(PWD)/tb.v

TOPLEVEL = tb
MODULE = test

include $(shell cocotb-config --makefiles)/Makefile.sim
