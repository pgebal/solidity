contract C {
	function f(uint z) public pure {
		require(z == 0);
		uint y = 0;
		do {
			++y;
			if (y == 1)
				continue;
			++z;
		} while (y < 4);
		assert(z == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
