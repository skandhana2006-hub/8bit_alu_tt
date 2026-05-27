import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def alu_test(dut):

    dut.ui_in.value = 5
    dut.uio_in.value = 3

    await Timer(10, units="ns")

    print("ALU Output =", dut.uo_out.value)
