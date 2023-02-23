contract C
{
	function f() public pure {
		uint x;
		for (uint i = 0; i < 3; ++i) {
			if (i > 1) {
				x = 1;
				break;
			}
			if (i > 1) {
				x = 2;
				break;
			}
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
