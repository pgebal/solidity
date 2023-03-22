contract C
{
	function f() public pure {
		uint x = 0;
		for (uint i = 0; i < 3; ++i) {
			x = x + i;
		}
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
