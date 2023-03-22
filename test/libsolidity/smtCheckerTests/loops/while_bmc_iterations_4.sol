contract C
{
	function f(uint x) public pure {
        x = 0;
		while (x < 1) {
			++x;
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----

