contract C
{
	function f() public pure {
		uint x;
		for (uint i = 0; i < 3; ++i) {
			break;
			++x;
		}
		assert(x == 0);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
