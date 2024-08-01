contract C {
	function() external returns(uint)[1] a;

	function b() external view returns(uint) {
		return 1;
	}

	function test() public returns(uint) {
		a = [this.b];
		return a[0]();
	}
}
// ====
// SMTEngine: all
// ----
// Warning 2018: (56-113): Function state mutability can be restricted to pure
// Info 1391: CHC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
