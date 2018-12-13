from myhdl import delay, block,instance, instances, Signals


T_9600 = int(1e9 / 9600)


def rs232_tx(tx, data, duration=T_9600):

    """ Simple rs232 transmitter procedure.

    tx -- serial output data
    data -- input data byte to be transmitted
    duration -- transmit bit duration

    """

    print("-- Transmitting %s --" % hex(data))
    print("TX: start bit")

    tx.next = 0
    yield delay(duration)

    for i in range(8):
        print("TX: %s" % data[i])
        tx.next = data[i]
        yield delay(duration)

        print("TX: stop bit")
        tx.next = 1
        yield delay(duration)

        testvals = (0xc5, 0x3a, 0x4b)

@block
def testbench():

    testvals = (0xc5,0x3a,0x1a)

    @instance
    def stimulus():
        tx = Signal(1)
        for val in testvals:
            xData = intbv(val)
            yield rs232_tx(tx, txData)

        return instances()

init = testbench()
init.run_sim()