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
