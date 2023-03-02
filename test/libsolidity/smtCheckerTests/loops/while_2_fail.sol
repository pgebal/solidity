contract C {
	function f(uint x) public pure {
		x = 2;
		while (x > 1) {
			if (x > 10)
				x = 2;
			else
				x = 10;
		}
		assert(x == 2);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// ----
// Warning 6838: (81-87): BMC: Condition is always false.
