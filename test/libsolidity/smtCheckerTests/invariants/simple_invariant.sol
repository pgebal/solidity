contract Simple {
    uint x;
	function f() public view {
		assert(x == 0);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// SMTIgnoreInv: no
// ----
