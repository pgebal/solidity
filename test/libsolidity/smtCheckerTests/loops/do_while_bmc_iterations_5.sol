contract C {
	function f(uint x) public pure {
		require(x == 0);
		uint y;
		do {
			++y;
			if (y == 2)
			    x = 3;
		} while (y < 3);
		// verification reports a warning because loop unwinding depth is 1
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 1
// ----
// Warning 4661: (211-225): BMC: Assertion violation happens here.
// Info 6002: BMC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
