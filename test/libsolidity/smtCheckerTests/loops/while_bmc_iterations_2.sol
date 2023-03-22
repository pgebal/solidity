contract C
{
	function f() public pure {
		uint x;
		while (x < 3) {
			++x;
			{
				++x;
				++x;
			}
		}
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
