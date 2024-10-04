module vmath

import math

@[noinit]
pub struct NonZeroInt {
	value int
}

pub fn NonZeroInt.new(n int) !NonZeroInt {
	if n == 0 {
		return error('Input must be a non-zero integer.')
	}
	return NonZeroInt{n}
}

// fract returns the fractional part of x.
pub fn fract(x f64) f64 {
	_, fract := math.modf(x)
	return fract
}
