contract C
{
	function f() public pure {
		uint x;
		do {
			if (x > 1) {
				break;
 			}
			if (x >= 0) {
				x = 10;
				continue;
 			}
		} while (x < 3);
		assert(x == 10);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
