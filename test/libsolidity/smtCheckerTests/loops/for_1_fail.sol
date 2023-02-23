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
// Warning 6328: (157-171): CHC: Assertion violation happens here.
// Info 1391: CHC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
// Info 6002: BMC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
