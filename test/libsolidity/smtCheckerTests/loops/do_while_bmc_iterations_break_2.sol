contract C
{
	function f(uint z) public pure {
		require(z == 0);
		uint y = 0;
		do {
			if (y > 0)
				break;
			++z;
			++y;
		} while (y < 2);
		assert(z == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----