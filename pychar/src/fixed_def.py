from myhdl import Signal, intbv, always_comb, block, instances
import numpy as np


class FixedDef:
    """Super-low budget signed fixed-point implementation."""

    # TODO: add support for add/mul functions for different fixed point representations
    # TODO: Check convertibility with user defined vhdl_code

    def __init__(self, m=8, f=8):
        """
        :param m: Number of bits before the radix point.
        :param f: Number of bits after the radix point.
        """
        self.m = m
        self.f = f
        self.width = self.m + self.f
        self.max_val = (1 << (m + f - 1)) - 1
        self.min_val = -(1 << (m + f - 1))

        # print("representation %d.%d (%d, %d)" % (self.m, self.f, self.min_val, self.max_val))

    def make_signal(self, init_value):
        return Signal(intbv(init_value, min=self.min_val, max=self.max_val))

    def emul_add(self, x, y):
        return self.to_float(self.to_fixed(x) + self.to_fixed(y))

    def emul_mul(self, x, y):
        return self.to_float((self.to_fixed(x) * self.to_fixed(y)) >> self.f)

    @block
    def fx_add(self, z, x, y):
        #assert len(x) == self.width, 'Wrong fixed point definition for value' + str(y)
        #assert len(y) == self.width, 'Wrong fixed point definition for value' + str(y)
        add_wide = Signal(intbv()[self.m + self.f:].signed())

        @always_comb
        def add_logic():
            add_wide.next = x.signed() + y.signed()

        @always_comb
        def logic():
            z.next = add_wide[self.m + self.f:]

        return instances()

    @block
    def fx_mul(self, z, x, y):
        #assert len(x) == self.width, 'Wrong fixed point definition for value' + str(y)
       # assert len(y) == self.width, 'Wrong fixed point definition for value' + str(y)
        mul_wide = Signal(intbv()[(self.m + self.f) * 2:].signed())

        @always_comb
        def u_logic():
            mul_wide.next = x.signed() * y.signed()

        @always_comb
        def logic():
            z.next = mul_wide[self.m + self.f + self.f:self.f]

        return instances()

    @block
    def fixed_sub(self, z, x, y):
        """FixedOp: Return the difference of the fixed point inputs x and y via z."""

        @always_comb
        def logic():
            z.next = x - y

        return logic

    def _to_fixed_single(self, x):
        return int(round(x * (1 << self.f)))

    def to_fixed(self, x):
        """Compute the nearest fixed-point representation of x."""
        if isinstance(x, np.ndarray):
            to_fixed_vec = np.vectorize(self._to_fixed_single)
            return to_fixed_vec(x)
        elif isinstance(x, list):
            return self.to_fixed(np.asarray(x)).tolist()
        else:
            return self._to_fixed_single(x)

    def _to_float_single(self, x):
        return int(x) / float(1 << self.f)

    def to_float(self, x):
        """Compute the nearest floating-point representation of fixed-point value x."""
        if isinstance(x, np.ndarray):
            to_float_vec = np.vectorize(self._to_float_single)
            return to_float_vec(x)
        elif isinstance(x, list):
            return self.to_float(np.asarray(x)).tolist()
        else:
            return self._to_float_single(x)

    def quantize_float(self, x):
        return self.to_float(self.to_fixed(x))

    def get_appendix(self):
        return '_fx_' + str(self.m) + '_' + str(self.f)
