contract C
{
	function f() public pure {
		uint x;
		do {
			++x;
			{
				++x;
				++x;
			}
		} while (x < 3);
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----