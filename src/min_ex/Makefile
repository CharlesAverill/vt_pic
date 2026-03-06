CC      := gcc
CFLAGS  := -Wall -O3 -fPIC
LDFLAGS := -shared

SRC_DIR := .
GHIDRA_DIR := ~/bin/ghidra_11.4.2
LIFTER_DIR := ~/Desktop/projects/rocq/pcode2coq

C_SRCS  := $(wildcard $(SRC_DIR)/*.c)
SO_OBJS := $(C_SRCS:.c=.so)
LIFTED  := $(C_SRCS:.c=_lifted.v)

all: $(SO_OBJS) $(LIFTED)

$(SRC_DIR)/%.so: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< $(LDFLAGS) -o $@

clean:
	rm -f $(SRC_DIR)/*.so $(SRC_DIR)/*_lifted.v *.vo*

$(SRC_DIR)/%_lifted.v: $(SRC_DIR)/%.so
	$(GHIDRA_DIR)/support/pyghidraRun --headless /tmp "$$(basename "$$(mktemp)")" -import $< -postScript $(LIFTER_DIR)/pcode2coq.py
	@cat $(LIFTER_DIR)/output/$*_so_*.v > $@
	perl -i -ne 'print unless /^Require Import (Picinae_amd64|NArith|Lia)\.$$/ && $$seen{$$_}++' $@
	perl -i -ne 'print unless /^Open Scope N\.$$/ && $$seen{$$_}++' $@
	sed -i 's|end\.(\*|end.\n\n(*|g' $@

.PHONY: all clean lift
