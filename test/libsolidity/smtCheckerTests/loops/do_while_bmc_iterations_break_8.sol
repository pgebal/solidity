contract C
{
	function f() public pure {
		uint x;
		do {
			break;
		} while (++x < 2);
        // loop condition is not executed after break
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
//  Warning 5740: (79-86): Unreachable code.
// Warning 2661: (79-82): BMC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Info 6002: BMC: 2 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
