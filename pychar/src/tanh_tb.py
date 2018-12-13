from myhdl import block, instance, Signal, ResetSignal, StopSimulation, instances, delay, intbv
import os

from myhdl_sim import clk_stim
from tanh import tanh
from fixed_def import FixedDef

@block
def testbench(vhdl_output_path=None):
    fxp = FixedDef(128, 8)

    reset = ResetSignal(0, active=0, async=False)
    clk = Signal(bool(0))

    x = Signal(intbv(0)[fxp.width:])
    y = Signal(intbv(0)[fxp.width:])

    period = 10
    # clk_gen = clk_stim(clk, period=10)

    low_time = int(period / 2)
    high_time = period - low_time

    @instance
    def drive_clk():
        while True:
            yield delay(low_time)
            clk.next = 1
            yield delay(high_time)
            clk.next = 0

    @instance
    def reset_gen():
        reset.next = 0
        yield delay(10)
        yield clk.negedge
        reset.next = 1
        # yield delay(10)
        # yield clk.negedge
        # reset.next = 0


    @instance
    def write_stim():
        yield reset.posedge
        yield clk.negedge
        x.next = fxp.to_fixed(60)
        yield clk.negedge
        for i in range(8):
            yield clk.negedge
        raise StopSimulation()

    # @instance
    # def read_stim():
    #     yield reset.posedge
    #     yield delay(601)
    #     yield clk.negedge
    #     axis_sum.tready.next = 1
    #     while True:
    #         yield clk.negedge
    #         if axis_sum.tlast == 1:
    #             break
    #
    #     for i in range(10):
    #         yield clk.negedge
    #     raise StopSimulation()

    uut = tanh(clk, reset, x, y, dokladnosc=5, fxp=fxp)

    if vhdl_output_path is not None:
        uut.convert(hdl='VHDL', path=vhdl_output_path, initial_values=True)
    return instances()


if __name__ == '__main__':
    trace_save_path = '../out/testbench/'
    vhdl_output_path = '../out/vhdl/'
    os.makedirs(os.path.dirname(trace_save_path), exist_ok=True)
    os.makedirs(os.path.dirname(vhdl_output_path), exist_ok=True)

    tb = testbench(vhdl_output_path)
    #tb = testbench()
    tb.config_sim(trace=True, directory=trace_save_path)
    tb.run_sim()
