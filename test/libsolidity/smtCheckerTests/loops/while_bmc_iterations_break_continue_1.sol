contract C
{
	function f() public pure {
		uint x;
		while (x < 3) {
			if (x > 1) {
				break;
 			}
			if (x >= 0) {
				x = 10;
				continue;
 			}
		}
		assert(x == 10);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
