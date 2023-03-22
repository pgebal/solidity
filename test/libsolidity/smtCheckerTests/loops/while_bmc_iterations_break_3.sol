contract C
{
	function f() public pure {
		uint x;
		while (x < 3) {
			if (x > 0) {
				++x;
				break;
			}
			++x;
		}
		assert(x == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
