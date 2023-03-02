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
// BMCLoopIterations: 3
// ----
// Warning 6838: (115-121): BMC: Condition is always false.