contract C {
	function f() public pure {
		uint x;
		while (x < 3) {
			++x;
			break;
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
