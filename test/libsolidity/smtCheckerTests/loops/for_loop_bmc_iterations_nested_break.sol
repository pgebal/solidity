contract C
{
	function f(uint x) public pure {
		require(x == 0);
		for (uint i = 0; i < 2; ++i) {
			for (uint j = 0; j < 2; ++j) {
				x = x + 1;
				break;
			}
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
