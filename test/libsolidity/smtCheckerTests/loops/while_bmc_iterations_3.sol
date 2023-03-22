contract C
{
	function f() public pure {
		uint x;
		while (x < 3) {
			if (x >= 2)
				++x;
			++x;
		}
		assert(x == 4);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 5
// ----
