contract C
{
	function f(uint x) public pure {
	    require(x == 0);
	    uint y;
	    x = 0;
		while (y < 1) {
			++y;
			x = x + 1;
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 1
// ----