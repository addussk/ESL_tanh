-- File: ../out/vhdl/my_sum.vhd
-- Generated by MyHDL 0.10
-- Date: Wed Nov 28 17:53:31 2018


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_010.all;

entity my_sum is
    port (
        clk: in std_logic;
        reset: in std_logic;
        axis_s_raw_tdata: in unsigned(31 downto 0);
        axis_s_raw_tready: out std_logic;
        axis_s_raw_tvalid: in std_logic;
        axis_s_raw_tlast: in std_logic;
        axis_m_sum_tdata: out unsigned(31 downto 0);
        axis_m_sum_tready: in std_logic;
        axis_m_sum_tvalid: out std_logic;
        axis_m_sum_tlast: out std_logic
    );
end entity my_sum;


architecture MyHDL of my_sum is


type t_enum_state_t_1 is (
    COUNT,
    WRITE_COUNT,
    WRITE_SUM
);
signal state: t_enum_state_t_1;
signal counter: unsigned(31 downto 0);
signal accumulator: unsigned(31 downto 0);

begin




MY_SUM_SUM_PROC: process (clk) is
begin
    if rising_edge(clk) then
        if (reset = '0') then
            counter <= to_unsigned(0, 32);
            axis_s_raw_tready <= '0';
            axis_m_sum_tvalid <= '0';
            state <= COUNT;
            axis_m_sum_tdata <= to_unsigned(0, 32);
            axis_m_sum_tlast <= '0';
            accumulator <= to_unsigned(0, 32);
        else
            case state is
                when COUNT =>
                    axis_m_sum_tvalid <= '0';
                    axis_m_sum_tlast <= '0';
                    axis_s_raw_tready <= '1';
                    if (axis_s_raw_tvalid = '1') then
                        accumulator <= (accumulator + axis_s_raw_tdata);
                        counter <= (counter + 1);
                        if (axis_s_raw_tlast = '1') then
                            state <= WRITE_COUNT;
                        end if;
                    end if;
                when WRITE_COUNT =>
                    axis_s_raw_tready <= '0';
                    axis_m_sum_tvalid <= '1';
                    axis_m_sum_tlast <= '0';
                    axis_m_sum_tdata <= counter;
                    if (axis_m_sum_tready = '1') then
                        state <= WRITE_SUM;
                        counter <= to_unsigned(0, 32);
                    end if;
                when WRITE_SUM =>
                    axis_s_raw_tready <= '0';
                    axis_m_sum_tvalid <= '1';
                    axis_m_sum_tlast <= '1';
                    axis_m_sum_tdata <= accumulator;
                    if (axis_m_sum_tready = '1') then
                        state <= COUNT;
                        accumulator <= to_unsigned(0, 32);
                    end if;
                when others =>
                    assert False report "End of Simulation" severity Failure;
            end case;
        end if;
    end if;
end process MY_SUM_SUM_PROC;

end architecture MyHDL;
