contract C {
	function f() public pure {
		uint x = 0;
        uint y = 0;
		do {
			++x;
			if (x > 0) {
                y = 1;
				continue;
			}
			if (x > 0) {
                y = 2;
                continue;
            }
		} while (x < 3);
		assert(y == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
