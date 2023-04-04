contract C
{
	function f() public pure {
		uint x = 0;
		for (uint i = 0; i < 0; ++i) {
			++x;
		}
		assert(x == 0);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
// Warning 6838: (74-79): BMC: Condition is always false.
// Info 6002: BMC: 2 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
