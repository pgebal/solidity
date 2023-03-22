contract C
{
	function f() public pure {
		uint x = 0;
		for (uint i = 0; i < 3; ++i) {
			if (i > 1)
				x = 10;
		}
		assert(x == 10);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
