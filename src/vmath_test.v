module vmath

fn test_fract() {
	assert fract(3.4) == 0.3999999999999999
}

fn test_non_zero_int() {
	NonZeroInt.new(0) or { assert true }
}
