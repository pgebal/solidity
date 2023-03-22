contract C {
	function f() public pure {
	    uint x;
	    uint i;
		while (i < 3) {
			++i;
			if (i > 1)
				continue;
			++x;
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
