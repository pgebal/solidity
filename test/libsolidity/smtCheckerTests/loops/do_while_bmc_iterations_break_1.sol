contract C {
	function f() public pure {
		uint x;
		do {
			++x;
			break;
		} while (x < 3);
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
// Warning 5740: (87-92): Unreachable code.
