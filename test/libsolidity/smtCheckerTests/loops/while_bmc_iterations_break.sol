contract C {
	function f() public pure {
	    uint y;
		while (y < 3) {
			++y;
			break;
		}
		assert(y == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
// Warning 4661: (143-157): BMC: Assertion violation happens here.