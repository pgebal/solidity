contract C
{
	function f() public pure {
		uint x;
		for (uint i = 0; i < 3; ++i) {
			if (i > 1) {
				x = 3;
				break;
 			}
			if (i >= 0) {
                x = 2;
				continue;
 			}
            ++x;
		}
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
// Info 6002: BMC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
