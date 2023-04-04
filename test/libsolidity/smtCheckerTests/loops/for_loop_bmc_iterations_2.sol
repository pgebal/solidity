contract C
{
	function f() public pure {
		uint x = 0;
		for (uint i = 0; i < 3; ++i) {
			x = i;
		}
		assert(x == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
// Info 6002: BMC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
