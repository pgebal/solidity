contract C
{
	function f() public pure {
		uint x;
		for (; x < 0; ++x) {}
		assert(x == 0);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 1
// ----
// Warning 6838: (60-65): BMC: Condition is always false.
// Info 6002: BMC: 2 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
