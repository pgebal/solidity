contract C
{
	function f(uint x) public pure {
		require(x == 0);
		for (uint i = 0; i < 3; ++i) {
			if (i > 0)
			  break;
			++x;
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
// Warning 4984: (102-105): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.