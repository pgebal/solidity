contract C
{
	function f() public pure {
		uint x;
		do {
			if (x >= 2)
				++x;
			++x;
		} while (x < 3);
		assert(x == 4);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 5
// ----
