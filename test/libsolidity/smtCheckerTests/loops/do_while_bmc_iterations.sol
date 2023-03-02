contract C
{
	function f(uint x) public pure {
	    require(x == 0);
	    uint y;
		do {
			++y;
			if (y == 2)
            	x = 3;
		} while (y < 2);
		assert(x == 3);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----