contract C
{
	function f(uint x) public pure {
	    require(x == 0);
	    uint y;
		while (y < 3) {
			++y;
			if (y == 2)
			    x = 3;
		}
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 2
// ----
