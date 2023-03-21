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
// SMTEngine: all
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
// Warning 4984: (127-130): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
