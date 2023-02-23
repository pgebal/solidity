contract C
{
	function f() public pure {
		uint x = 0;
		do {
			if (x > 0)
				break;
			++x;
		} while (x < 3);
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
// Info 6002: BMC: 2 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
