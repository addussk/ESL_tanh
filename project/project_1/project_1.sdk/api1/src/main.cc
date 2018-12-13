/*
 * Empty C++ Application
 */

#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "AxiFifoMM.h"

int main() {
    init_platform();
    xil_printf("Hello World\r\n");
    cleanup_platform();

    AxiFifoMM fifo(XPAR_AXI_FIFO_0_DEVICE_ID);
    constexpr unsigned data_words_num = 64;
    std::vector<uint32_t> in_buff;
    for (unsigned i = 0; i < data_words_num; i++) {
        in_buff.push_back(i);
    }
    fifo.write(in_buff);
    auto out_buff = fifo.read();
    for (unsigned i = 0; i < out_buff.size(); i++) {
        xil_printf("out_buff[%d] = %d\n\r", i, out_buff[i]);
    }

    return 0;
}

