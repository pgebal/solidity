contract C
{
	function f() public pure {
		uint x = 0;
		do {
			if (x > 0)
				break;
			++x;
		} while (x < 3);
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
