contract C {
	function f() public pure {
	    uint x;
	    uint i;
		while (i < 3) {
			++i;
			uint j;
			while (j < 3) {
				++j;
				if (i > 1)
					continue;
				++x;
			}
		}
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
