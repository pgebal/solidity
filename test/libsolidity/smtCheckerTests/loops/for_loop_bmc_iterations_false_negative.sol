contract C
{
	function f() public pure {
		uint x = 0;
		for (uint i = 0; i < 2; ++i) {
			++x;
		}
		// verification reports a warning because loop unwinding depth is 1
		assert(x == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 1
// ----
// Warning 4661: (172-186): BMC: Assertion violation happens here.
// Info 6002: BMC: 2 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
