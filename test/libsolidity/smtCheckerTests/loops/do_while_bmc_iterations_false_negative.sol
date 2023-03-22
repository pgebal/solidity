contract C {
	function f() public pure {
        uint x;
		do {
			++x;
		} while (true);
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 1
// ----