contract C
{
	function f() public pure {
		uint x = 0;
		for (uint i = 1; i < 3;) {
			x = i;
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
// Warning 6838: (74-79): BMC: Condition is always true.
