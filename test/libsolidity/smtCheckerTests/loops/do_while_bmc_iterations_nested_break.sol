contract C
{
	function f(uint z) public pure {
		uint x = 0;
		require(z == 0);
		do {
			uint y = 0;
			do {
				if (y > 0)
					break;
				++z;
				++y;
			} while (y < 2);
			++x;
		} while (x < 2);
		assert(z == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----