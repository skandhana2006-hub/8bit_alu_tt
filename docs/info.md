# 8-bit ALU

## What it does

This project implements a simple 8-bit Arithmetic Logic Unit (ALU) for Tiny Tapeout.

The ALU performs arithmetic and logical operations on two 4-bit inputs.

Supported operations:

* Addition
* Subtraction
* AND
* OR

The operation is selected using control bits.

## How it works

The design takes two 4-bit numbers from the input pins.

* `A = ui_in[3:0]`
* `B = ui_in[7:4]`

The operation select bits are:

* `sel = uio_in[1:0]`

Operations:

* `00` → Addition
* `01` → Subtraction
* `10` → AND
* `11` → OR

The result is sent to:

* `uo_out[7:0]`

Unused bidirectional pins are disabled.

## How to test

Apply two 4-bit inputs to the ALU.

Example:

* A = 3
* B = 2

Change the select bits:

* `00` gives A+B
* `01` gives A-B
* `10` gives A AND B
* `11` gives A OR B

Observe the output on `uo_out`.

## External hardware

No external hardware is required.
