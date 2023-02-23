contract C
{
	function f(uint x) public pure {
		require(x == 0);
		for (uint i = 0; i < 2; ++i) {
			for (uint j = 0; j < 2; ++j)
				++x;
		}
		assert(x == 4);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
// Info 6002: BMC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
