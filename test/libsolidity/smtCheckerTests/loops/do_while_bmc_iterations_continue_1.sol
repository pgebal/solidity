contract C {
	function f() public pure {
		uint x = 0;
		do {
			++x;
			if (x == 3) {
				continue;
			}
			++x;
		} while (x < 3);
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
