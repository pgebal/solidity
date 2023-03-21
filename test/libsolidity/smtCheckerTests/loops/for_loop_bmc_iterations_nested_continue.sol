contract C
{
	function f(uint x) public pure {
		require(x == 0);
		for (uint i = 0; i < 2; ++i) {
			for (uint j = 0; j < 2; ++j) {
			    if (i == 1)
			    	continue;
				x = x + 1;
			}
		}
		assert(x == 2);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----