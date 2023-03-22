contract C
{
	function f() public pure {
		uint x;
		while (x < 3) {
			++x;
			if (x > 1) {
				x = 3;
				break;
 			}
			if (x > 0) {
				x = 2;
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
