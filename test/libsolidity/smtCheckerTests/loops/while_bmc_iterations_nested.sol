contract C
{
	function f(uint x) public pure {
	    require(x == 0);
	    x = 0;
		while (x < 2) {
			++x;
		}
		assert(x == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----