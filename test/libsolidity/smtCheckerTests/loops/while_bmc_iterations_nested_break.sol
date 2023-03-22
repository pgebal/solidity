contract C
{
	function f(uint z) public pure {
		uint x = 0;
		require(z == 0);
		while (x < 2) {
			uint y = 0;
			while (y < 2) {
				if (y > 0)
					break;
				++z;
				++y;
			}
			++x;
		}
		assert(z == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
