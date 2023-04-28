contract C
{
	uint x;
    uint y;

	function condition() private returns(bool) {
		++x;
		return x < 3;
	}

    function expression() private {
		++y;
	}

	function f() public {
        require(x == 0);
        require(y == 0);
		for (; condition(); expression()) {
		}
		assert(x == 3);
        assert(y == 2);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 5
// ----
// Warning 2661: (83-86): BMC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Warning 2661: (146-149): BMC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Info 6002: BMC: 4 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
