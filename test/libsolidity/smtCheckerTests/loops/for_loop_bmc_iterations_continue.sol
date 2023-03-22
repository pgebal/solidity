contract C
{
	function f(uint x) public pure {
		require(x == 0);
		for (uint i = 0; i < 3; ++i) {
			if (i > 1)
			  continue;
			++x;
		}
		assert(x == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
