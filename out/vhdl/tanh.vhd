-- File: ../out/vhdl/tanh.vhd
-- Generated by MyHDL 0.10
-- Date: Wed Dec 12 18:45:59 2018


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_010.all;

entity tanh is
    port (
        clock: in std_logic;
        reset: in std_logic;
        x: in unsigned(135 downto 0);
        y: out unsigned(135 downto 0)
    );
end entity tanh;


architecture MyHDL of tanh is


signal y_tmp_2: unsigned(135 downto 0) := 136X"0000000000000000000000000000000001";
signal y_tmp: unsigned(135 downto 0) := 136X"0000000000000000000000000000000001";
signal cosinus20_const_3: unsigned(135 downto 0) := 136X"0000000000000000000000000000000300";
signal cosinus20_const_2: unsigned(135 downto 0) := 136X"0000000000000000000000000000000200";
signal cosinus20_mnoz_sygn_we: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal cosinus20_mnozenie_nawias_si: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_d_nawias_si: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_p_nawias_si: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_p_mnozenie_si: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_wynik_mnoz_sygn_we: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal cosinus20_wynik_dzielenia: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_silnia_mnozenie: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal cosinus20_silnia: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal cosinus20_pom: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal cosinus20_licznik: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_cos_wyn: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_cos_sklad: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_const_1: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal cosinus20_FixedDef0_fx_mul0_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal cosinus20_FixedDef1_fx_add0_add_wide: signed (135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_FixedDef1_fx_add1_add_wide: signed (135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_FixedDef0_fx_mul1_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal cosinus20_FixedDef0_fx_mul2_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal cosinus20_FixedDef1_fx_add2_add_wide: signed (135 downto 0) := 136X"0000000000000000000000000000000000";
signal cosinus20_FixedDef0_fx_mul3_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal cosinus20_FixedDef0_fx_mul4_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal sinus20_const_2: unsigned(135 downto 0) := 136X"0000000000000000000000000000000200";
signal sinus20_mnoz_sygn_we: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal sinus20_mnozenie_nawias_si: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_d_nawias_si: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_p_nawias_si: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_p_mnozenie_si: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_wynik_mnoz_sygn_we: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal sinus20_wynik_dzielenia: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_silnia_mnozenie: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal sinus20_silnia: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal sinus20_pom: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal sinus20_licznik: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_cos_wyn: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_cos_sklad: unsigned(135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_const_1: unsigned(135 downto 0) := 136X"0000000000000000000000000000000100";
signal sinus20_FixedDef0_fx_mul5_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal sinus20_FixedDef1_fx_add3_add_wide: signed (135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_FixedDef1_fx_add4_add_wide: signed (135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_FixedDef0_fx_mul6_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal sinus20_FixedDef0_fx_mul7_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal sinus20_FixedDef1_fx_add5_add_wide: signed (135 downto 0) := 136X"0000000000000000000000000000000000";
signal sinus20_FixedDef0_fx_mul8_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";
signal sinus20_FixedDef0_fx_mul9_mul_wide: signed (271 downto 0) := 272X"00000000000000000000000000000000000000000000000000000000000000000000";

begin





cosinus20_FixedDef0_fx_mul0_mul_wide <= (signed(cosinus20_const_2) * signed(cosinus20_licznik));


cosinus20_p_mnozenie_si <= unsigned(cosinus20_FixedDef0_fx_mul0_mul_wide(((128 + 8) + 8)-1 downto 8));


cosinus20_FixedDef1_fx_add0_add_wide <= (signed(cosinus20_p_mnozenie_si) + signed(cosinus20_const_2));


cosinus20_p_nawias_si <= unsigned(cosinus20_FixedDef1_fx_add0_add_wide((128 + 8)-1 downto 0));


cosinus20_FixedDef1_fx_add1_add_wide <= (signed(cosinus20_p_mnozenie_si) + signed(cosinus20_const_3));


cosinus20_d_nawias_si <= unsigned(cosinus20_FixedDef1_fx_add1_add_wide((128 + 8)-1 downto 0));


cosinus20_FixedDef0_fx_mul1_mul_wide <= (signed(cosinus20_p_nawias_si) * signed(cosinus20_d_nawias_si));


cosinus20_mnozenie_nawias_si <= unsigned(cosinus20_FixedDef0_fx_mul1_mul_wide(((128 + 8) + 8)-1 downto 8));


cosinus20_FixedDef0_fx_mul2_mul_wide <= (signed(cosinus20_silnia) * signed(cosinus20_mnozenie_nawias_si));


cosinus20_silnia_mnozenie <= unsigned(cosinus20_FixedDef0_fx_mul2_mul_wide(((128 + 8) + 8)-1 downto 8));


cosinus20_FixedDef1_fx_add2_add_wide <= (signed(cosinus20_wynik_mnoz_sygn_we) + signed(cosinus20_cos_wyn));


cosinus20_cos_sklad <= unsigned(cosinus20_FixedDef1_fx_add2_add_wide((128 + 8)-1 downto 0));


cosinus20_FixedDef0_fx_mul3_mul_wide <= (signed(x) * signed(x));


cosinus20_mnoz_sygn_we <= unsigned(cosinus20_FixedDef0_fx_mul3_mul_wide(((128 + 8) + 8)-1 downto 8));


cosinus20_FixedDef0_fx_mul4_mul_wide <= (signed(cosinus20_pom) * signed(cosinus20_mnoz_sygn_we));


cosinus20_wynik_mnoz_sygn_we <= unsigned(cosinus20_FixedDef0_fx_mul4_mul_wide(((128 + 8) + 8)-1 downto 8));

TANH_COSINUS20_COS_PROC: process (clock, reset) is
begin
    if (reset = '0') then
        cosinus20_pom <= cosinus20_const_1;
    elsif rising_edge(clock) then
        cosinus20_pom <= cosinus20_wynik_mnoz_sygn_we;
        cosinus20_cos_wyn <= cosinus20_cos_sklad;
        cosinus20_silnia <= cosinus20_silnia_mnozenie;
        cosinus20_wynik_dzielenia <= (shift_left(cosinus20_cos_wyn, 8) / cosinus20_silnia);
        cosinus20_licznik <= (cosinus20_licznik + cosinus20_const_1);
        if (cosinus20_licznik = 8) then
            y_tmp <= cosinus20_wynik_dzielenia;
        else
            y_tmp <= to_unsigned(1, 136);
        end if;
    end if;
end process TANH_COSINUS20_COS_PROC;


sinus20_FixedDef0_fx_mul5_mul_wide <= (signed(sinus20_const_2) * signed(sinus20_licznik));


sinus20_p_mnozenie_si <= unsigned(sinus20_FixedDef0_fx_mul5_mul_wide(((128 + 8) + 8)-1 downto 8));


sinus20_FixedDef1_fx_add3_add_wide <= (signed(sinus20_p_mnozenie_si) + signed(sinus20_const_1));


sinus20_p_nawias_si <= unsigned(sinus20_FixedDef1_fx_add3_add_wide((128 + 8)-1 downto 0));


sinus20_FixedDef1_fx_add4_add_wide <= (signed(sinus20_p_mnozenie_si) + signed(sinus20_const_2));


sinus20_d_nawias_si <= unsigned(sinus20_FixedDef1_fx_add4_add_wide((128 + 8)-1 downto 0));


sinus20_FixedDef0_fx_mul6_mul_wide <= (signed(sinus20_p_nawias_si) * signed(sinus20_d_nawias_si));


sinus20_mnozenie_nawias_si <= unsigned(sinus20_FixedDef0_fx_mul6_mul_wide(((128 + 8) + 8)-1 downto 8));


sinus20_FixedDef0_fx_mul7_mul_wide <= (signed(sinus20_silnia) * signed(sinus20_mnozenie_nawias_si));


sinus20_silnia_mnozenie <= unsigned(sinus20_FixedDef0_fx_mul7_mul_wide(((128 + 8) + 8)-1 downto 8));


sinus20_FixedDef1_fx_add5_add_wide <= (signed(sinus20_wynik_mnoz_sygn_we) + signed(sinus20_cos_wyn));


sinus20_cos_sklad <= unsigned(sinus20_FixedDef1_fx_add5_add_wide((128 + 8)-1 downto 0));


sinus20_FixedDef0_fx_mul8_mul_wide <= (signed(x) * signed(x));


sinus20_mnoz_sygn_we <= unsigned(sinus20_FixedDef0_fx_mul8_mul_wide(((128 + 8) + 8)-1 downto 8));


sinus20_FixedDef0_fx_mul9_mul_wide <= (signed(sinus20_pom) * signed(sinus20_mnoz_sygn_we));


sinus20_wynik_mnoz_sygn_we <= unsigned(sinus20_FixedDef0_fx_mul9_mul_wide(((128 + 8) + 8)-1 downto 8));

TANH_SINUS20_COS_PROC: process (clock, reset) is
begin
    if (reset = '0') then
        sinus20_pom <= sinus20_const_1;
    elsif rising_edge(clock) then
        sinus20_pom <= sinus20_wynik_mnoz_sygn_we;
        sinus20_cos_wyn <= sinus20_cos_sklad;
        sinus20_silnia <= sinus20_silnia_mnozenie;
        sinus20_wynik_dzielenia <= (shift_left(sinus20_cos_wyn, 8) / sinus20_silnia);
        sinus20_licznik <= (sinus20_licznik + sinus20_const_1);
        if (sinus20_licznik = 8) then
            y_tmp_2 <= sinus20_wynik_dzielenia;
        else
            y_tmp_2 <= to_unsigned(1, 136);
        end if;
    end if;
end process TANH_SINUS20_COS_PROC;

TANH_TANH_PROC: process (clock) is
begin
    if rising_edge(clock) then
        if (reset = '0') then
            y <= to_unsigned(0, 136);
        else
            y <= (shift_left(y_tmp, 8) / y_tmp_2);
        end if;
    end if;
end process TANH_TANH_PROC;

end architecture MyHDL;