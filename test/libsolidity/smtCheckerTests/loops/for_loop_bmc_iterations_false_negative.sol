contract C
{
	function f() public pure {
		uint x = 0;
		for (; true;) {
			++x;
		}
        // fails because loop unwind depth is set to 1
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 1
// ----
