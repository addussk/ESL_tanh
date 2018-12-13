/*
 * Empty C++ Application
 */

#include "platform.h"
#include "xil_printf.h"

#include "AxiFifoMM.h"
#include "TimeMeasure.h"

void example();

int main() {
	init_platform();
	xil_printf("Starting example app\r\n");

	example();

	xil_printf("Closing example app\r\n");
	cleanup_platform();
	return 0;
}

void example() {
	AxiFifoMM fifo(XPAR_AXI_FIFO_0_DEVICE_ID);
	TimeMeasure timer(XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ);

	constexpr unsigned data_words_num = 64;
	std::vector<uint32_t> in_buff;

	for (unsigned i = 0; i < data_words_num; i++) {
		in_buff.push_back(i);
	}

	timer.start();

	fifo.write(in_buff);
	auto DestinationBuffer = fifo.read();

	timer.stop();

	for (unsigned i = 0; i < DestinationBuffer.size(); i++) {
		xil_printf("DestinationBuffer[%d] = %d\n\r", i, DestinationBuffer[i]);
	}

	uint32_t sum = 0;
	for (auto &val : in_buff) {
		sum += val;
	}
	xil_printf("sum = %d\r\n", sum);
	timer.print_time();

}
