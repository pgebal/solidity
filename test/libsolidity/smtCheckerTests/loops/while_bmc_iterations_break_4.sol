contract C
{
	function f() public pure {
		uint x;
		while (x < 3) {
			++x;
			if (x > 0) {
 				++x;
				break;
			}
		}
		assert(x == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
