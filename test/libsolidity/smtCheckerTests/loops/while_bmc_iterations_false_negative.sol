contract C {
	function f() public pure {
        uint x;
		while (true) {
			++x;
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 1
// ----