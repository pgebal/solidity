contract C
{
	function f() public pure {
		uint x;
		for (uint i = 0; i < 0; ++i)
			++x;
		assert(x == 0);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
// Warning 6838: (70-75): BMC: Condition is always false.
// Info 6002: BMC: 3 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
