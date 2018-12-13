#made by Marcin Sikora, Adrian Kruczak 
#13.12.2018, AGH 
#Elektronika, ESL


from myhdl import block, always_seq, Signal, intbv, enum, instances, always_comb, always
import src.fixed_def


@block
def sinus2(clock, reset, my_input, y, dokladnosc=6, fxp=None):

    my_x = Signal(intbv(0)[fxp.width:])
    licznik = Signal(intbv(0)[fxp.width:])
    cosinus = Signal(intbv(0)[fxp.width:])
    silnia = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    silnia_mnozenie = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    p_mnozenie_si = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    p_nawias_si = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    d_nawias_si = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    mnozenie_nawias_si = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    cos_wyn = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    cos_sklad = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    wynik_dzielenia = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    mnoz_sygn_we = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    # mnoz_sygn_we.driven = True
    wynik_mnoz_sygn_we = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    # wynik_mnoz_sygn_we.driven = True
    mnoz_sygn_we_pom = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    mnoz_sygn_we_pom.driven = True

    pom = Signal(intbv(fxp.to_fixed(1))[fxp.width:])

    const_1 = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    const_1.driven = True
    const_2 = Signal(intbv(fxp.to_fixed(2))[fxp.width:])
    const_2.driven = True
    const_3 = Signal(intbv(fxp.to_fixed(3))[fxp.width:])
    const_3.driven = True

    calc_inst = list()

    # calc_inst.append(fxp.fx_add(my_x, licznik, my_input))
    calc_inst.append(fxp.fx_mul(p_mnozenie_si, const_2, licznik))
    calc_inst.append(fxp.fx_add(p_nawias_si, p_mnozenie_si, const_2))
    calc_inst.append(fxp.fx_add(d_nawias_si, p_mnozenie_si, const_3))
    calc_inst.append(fxp.fx_mul(mnozenie_nawias_si, p_nawias_si, d_nawias_si))
    calc_inst.append(fxp.fx_mul(silnia_mnozenie, silnia, mnozenie_nawias_si))
    calc_inst.append(fxp.fx_add(cos_sklad, wynik_mnoz_sygn_we, cos_wyn))
    calc_inst.append(fxp.fx_mul(mnoz_sygn_we, my_input, my_input))
    calc_inst.append(fxp.fx_mul(wynik_mnoz_sygn_we, pom, mnoz_sygn_we))

    @always(clock.posedge, reset.negedge)
    def cos_proc():
        if reset == 0:
            pom.next = const_1
            # wynik_mnoz_sygn_we.next = const_1
        else:
            pom.next = wynik_mnoz_sygn_we
            cos_wyn.next = cos_sklad
            silnia.next = silnia_mnozenie
            wynik_dzielenia.next = (cos_wyn << fxp.f) // silnia
            licznik.next = licznik + const_1

            if (licznik == 8):
                y.next = wynik_dzielenia
            else:
                y.next = 1

    return instances()


@block
def cosinus2(clock, reset, my_input, y, dokladnosc=6, fxp=None):
    my_x = Signal(intbv(0)[fxp.width:])
    licznik = Signal(intbv(0)[fxp.width:])
    cosinus = Signal(intbv(0)[fxp.width:])
    silnia = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    silnia_mnozenie = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    p_mnozenie_si = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    p_nawias_si = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    d_nawias_si = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    mnozenie_nawias_si = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    cos_wyn = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    cos_sklad = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    wynik_dzielenia = Signal(intbv(fxp.to_fixed(0))[fxp.width:])
    mnoz_sygn_we = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    # mnoz_sygn_we.driven = True
    wynik_mnoz_sygn_we = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    # wynik_mnoz_sygn_we.driven = True
    mnoz_sygn_we_pom = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    mnoz_sygn_we_pom.driven = True

    pom = Signal(intbv(fxp.to_fixed(1))[fxp.width:])

    const_1 = Signal(intbv(fxp.to_fixed(1))[fxp.width:])
    const_1.driven = True
    const_2 = Signal(intbv(fxp.to_fixed(2))[fxp.width:])
    const_2.driven = True
    const_3 = Signal(intbv(fxp.to_fixed(3))[fxp.width:])
    const_3.driven = True

    calc_inst = list()

    # calc_inst.append(fxp.fx_add(my_x, licznik, my_input))
    calc_inst.append(fxp.fx_mul(p_mnozenie_si, const_2, licznik))
    calc_inst.append(fxp.fx_add(p_nawias_si, p_mnozenie_si, const_1))
    calc_inst.append(fxp.fx_add(d_nawias_si, p_mnozenie_si, const_2))
    calc_inst.append(fxp.fx_mul(mnozenie_nawias_si, p_nawias_si, d_nawias_si))
    calc_inst.append(fxp.fx_mul(silnia_mnozenie, silnia, mnozenie_nawias_si))
    calc_inst.append(fxp.fx_add(cos_sklad, wynik_mnoz_sygn_we, cos_wyn))
    calc_inst.append(fxp.fx_mul(mnoz_sygn_we, my_input, my_input))
    calc_inst.append(fxp.fx_mul(wynik_mnoz_sygn_we, pom, mnoz_sygn_we))

    @always(clock.posedge, reset.negedge)
    def cos_proc():
        if reset == 0:
            pom.next = const_1
            # wynik_mnoz_sygn_we.next = const_1
        else:
            pom.next = wynik_mnoz_sygn_we
            cos_wyn.next = cos_sklad
            silnia.next = silnia_mnozenie
            wynik_dzielenia.next = (cos_wyn << fxp.f) // silnia
            licznik.next = licznik + const_1

            if (licznik == 8):
                y.next = wynik_dzielenia
            else:
                y.next = 1

    return instances()


@block
def tanh(clock, reset, x, y, dokladnosc=6, fxp=None):

    y_tmp = Signal(intbv(1)[fxp.width:])
    y_tmp_2 = Signal(intbv(1)[fxp.width:])
    cos_inst = cosinus2(clock=clock, reset=reset, my_input=x, y=y_tmp, dokladnosc=dokladnosc, fxp=fxp)
    sin_inst = sinus2(clock=clock, reset=reset, my_input=x, y=y_tmp_2, dokladnosc=dokladnosc, fxp=fxp)

    @always_seq(clock.posedge, reset)
    def tanh_proc():
        y.next = (y_tmp_2 << fxp.f)// y_tmp

    return instances()
