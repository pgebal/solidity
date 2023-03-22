contract C
{
	function f(uint x) public pure {
		require(x < 100);
		for (uint i = 0; i < 10; ++i) {
			// Overflows due to resetting x.
			x = x + 1;
		}
		assert(x < 14);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// ----
// Warning 4984: (144-149): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6328: (157-171): CHC: Assertion violation happens here.\nCounterexample:\n\nx = 14\n\nTransaction trace:\nC.constructor()\nC.f(4)
