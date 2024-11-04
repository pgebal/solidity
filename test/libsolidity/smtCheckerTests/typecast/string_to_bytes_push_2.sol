contract C {
	string x;

	function s() public {
		x = "abc";
		((bytes(((x))))).push("a");
		assert(bytes(x).length == 4); // should hold
		assert(bytes(x).length == 3); // should fail
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 6328: (140-168): CHC: Assertion violation happens here.
// Info 1391: CHC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
// Warning 3084: CHC: Note that array/mapping aliasing is not supported, any may produce spurious results (false positives).\nYou can re-introduce information using require().
